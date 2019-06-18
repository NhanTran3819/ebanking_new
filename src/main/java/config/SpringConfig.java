package config;

import java.util.Properties;
import javax.persistence.EntityManagerFactory;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(basePackages = "repository")
public class SpringConfig {
    @Bean
    DataSource dataSource(){
        DriverManagerDataSource dataSource =new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/ebankingDB");
        dataSource.setUsername("root");
        dataSource.setPassword("Human@199111");
        return dataSource;
    }
    @Bean
    public LocalContainerEntityManagerFactoryBean 
        entityManagerFactory(DataSource dataSource){
        LocalContainerEntityManagerFactoryBean entityManager =
                new LocalContainerEntityManagerFactoryBean();
        entityManager.setDataSource(dataSource);
        entityManager.setJpaVendorAdapter(new HibernateJpaVendorAdapter());
        entityManager.setPackagesToScan("entity");
        
        Properties jpaProperties = new Properties();
        jpaProperties.setProperty("hibernate.dialect", 
                "org.hibernate.dialect.MySQLDialect");
        jpaProperties.setProperty("hibernate.hbm2dll.auto", "update");
        
        entityManager.setJpaProperties(jpaProperties);
        
        return entityManager;
    }
    @Bean
    public JpaTransactionManager 
        transactionManager(EntityManagerFactory entityManagerFactory){
            JpaTransactionManager jpaTransactionManager=new JpaTransactionManager();
            jpaTransactionManager.setEntityManagerFactory(entityManagerFactory);
            return jpaTransactionManager;
        }
}
