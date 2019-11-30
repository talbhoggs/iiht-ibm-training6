package com.ibm.ph.amperca.captchmvc;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

		auth.inMemoryAuthentication().withUser("admin").password(bCryptPasswordEncoder().encode("admin")).roles("USER", "ADMIN");

	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/login").permitAll().antMatchers("/about").permitAll().antMatchers("/signup").permitAll()
	    .antMatchers("/login/**").permitAll().antMatchers("/signup/**").permitAll().antMatchers("/webjars/**").permitAll().antMatchers("/captcha").permitAll()
		        .antMatchers("/h2-console/**").permitAll().anyRequest().authenticated().and().formLogin()
		        .loginPage("/login").defaultSuccessUrl("/main", true).and().logout()
		        .logoutSuccessUrl("/login?logout=true").invalidateHttpSession(true).permitAll().and().csrf().disable();
		  http.headers().frameOptions().disable();
	}

	@Bean
	public BCryptPasswordEncoder bCryptPasswordEncoder() {
		return new BCryptPasswordEncoder();
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/static/**","/webjars/**","/**/*.html", "/**/*.css", "/**/*.js", "/**/*.{png,jpg,jpeg,svg.ico}");
	}
}