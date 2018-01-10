package com.apollo.apollostore;

import org.apache.commons.dbcp2.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.shiro.mgt.SecurityManager;
import org.apache.shiro.realm.Realm;
import org.apache.shiro.realm.jdbc.JdbcRealm;
import org.apache.shiro.realm.text.TextConfigurationRealm;
import org.apache.shiro.spring.LifecycleBeanPostProcessor;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.sql.DataSource;
import java.util.LinkedHashMap;
import java.util.Map;

@Configuration
@ComponentScan(basePackages = {"com.apollo.apollostore.service"})
@EnableTransactionManagement
public class SpringConfig {

    @Bean
    public DataSource dataSource() {
        BasicDataSource dataSource = new BasicDataSource();
        // 设置jdbc driver的主类
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql:///apollostore");
        dataSource.setUsername("root");
        dataSource.setPassword("123456");
        return dataSource;
    }

    // 配置MyBatis的sql会话工厂，同时也是启动MyBatis的地方。
    // 具体启动工作由mybatis spring插件中的SqlSessionFactoryBean完成。
    @Bean
    public SqlSessionFactory sqlSessionFactory(
            DataSource dataSource, ApplicationContext context) throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(dataSource);
        // classpath*: 可以让我找到所有classpath中的文件，classpath:能力差些
        // 这个区别可以导致某些代码在正常情况下可以运行，但是在测试中不能。
        bean.setMapperLocations(context.getResources("classpath*:*-mapper.xml"));
        return bean.getObject();
    }

    // 配置Spring的事务管理器（基于数据源的事务管理）
    @Bean
    public DataSourceTransactionManager transactionManager(DataSource dataSource) {
        DataSourceTransactionManager tx = new DataSourceTransactionManager();
        tx.setDataSource(dataSource);
        return tx;
    }

    @Bean
    public static MapperScannerConfigurer mapperScannerConfigurer() {
        MapperScannerConfigurer configurer = new MapperScannerConfigurer();
        configurer.setSqlSessionFactoryBeanName("sqlSessionFactory");
        configurer.setBasePackage("com.apollo.apollostore.mapper");
        return configurer;
    }

    @Bean
    public CommonsMultipartResolver multipartResolver() {
        CommonsMultipartResolver resolver = new CommonsMultipartResolver();
        resolver.setMaxUploadSize((1 << 20) * 5);//上传上线// 5MB

        return resolver;
    }

    // TODO: 可以动态的制定账号密码甚至角色权限
    @Bean
    public Realm realm(DataSource dataSource) {
        TextConfigurationRealm realm = new TextConfigurationRealm();
        realm.setRoleDefinitions("admin=read,write\n" +
                "user=read"); // 定义角色和角色的权限
        realm.setUserDefinitions("admin=password,admin\n" + "user=123456,user"); // 定义用户名、密码和用户持有的角色
        realm.setCachingEnabled(true);
        realm.init(); // 不知道为什么，这个方法没有被自动调用。
        return realm;
        //使用JDBCRealm，从数据库的表里动态获取用户认证信息和权限信息。
//        JdbcRealm realm = new JdbcRealm();
//        realm.setDataSource(dataSource);
//        //告诉realm（领域、范围）如何根据用户名提取密码
//        realm.setAuthenticationQuery("select password password from user where id = ?");
//        //告诉realm如何根据用户名提取用户的角色信息
//        //目前，系统中没有指定用户的角色列或者表，所以写死为`user`角色
//        realm.setUserRolesQuery("select `user` role_name from user where id = ?");
//        return realm;
    }
    // TODO: 可以简单的在代码中用注解的方式配置某个方法（资源）的访问权限、角色要求
    @Bean
    public SecurityManager securityManager(Realm realm) {
        DefaultWebSecurityManager securityManager = new DefaultWebSecurityManager();
        securityManager.setRealm(realm); // 设置realm.
        return securityManager;
    }
    @Bean
    public ShiroFilterFactoryBean shiroFilter(SecurityManager securityManager) {
        ShiroFilterFactoryBean shiroFilterFactoryBean = new ShiroFilterFactoryBean();
        // 必须设置 SecurityManager
        shiroFilterFactoryBean.setSecurityManager(securityManager);
        // 如果不设置默认会自动寻找Web工程根目录下的"/login.jsp"页面
        shiroFilterFactoryBean.setLoginUrl("/login.html");
        // 登录成功后要跳转的链接
        shiroFilterFactoryBean.setSuccessUrl("/");
        // 未授权界面;
        shiroFilterFactoryBean.setUnauthorizedUrl("/403");
        // 拦截器.
        Map<String, String> filterChainDefinitionMap = new LinkedHashMap<>();
        // 配置不会被拦截的链接 顺序判断
        filterChainDefinitionMap.put("/favicon.ico", "anon");
        filterChainDefinitionMap.put("/static/**", "anon");
        // 配置退出过滤器,其中的具体的退出代码Shiro已经替我们实现了
        filterChainDefinitionMap.put("/logout", "logout");
        // <!-- 过滤链定义，从上向下顺序执行，一般将 /**放在最为下边 -->:这是一个坑呢，一不小心代码就不好使了;
        // <!-- authc:所有url都必须认证通过才可以访问; anon:所有url都都可以匿名访问-->
        filterChainDefinitionMap.put("/**", "authc");

        shiroFilterFactoryBean.setFilterChainDefinitionMap(filterChainDefinitionMap);
        return shiroFilterFactoryBean;
    }

    @Bean
    public LifecycleBeanPostProcessor lifecycleBeanPostProcessor() {
        return new LifecycleBeanPostProcessor();
    }
}
