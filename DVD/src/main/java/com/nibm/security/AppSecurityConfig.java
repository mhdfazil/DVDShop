package com.nibm.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

@Configuration
@EnableWebSecurity
public class AppSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired 
	private UserDetailsService userDetailssService;
	  
	@Bean 
	public AuthenticationProvider authProvider() {
		
		DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
		provider.setUserDetailsService(userDetailssService);
		provider.setPasswordEncoder(new BCryptPasswordEncoder()); 
		return provider; 
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		.csrf().disable()
		
		//all pages should be authorized
		.antMatcher("/**")
		.authorizeRequests()
		
		//valid for every users
		.antMatchers("/login", "/webjars/**", "/error**", "/**.css", "/guest", "/signup", "/prod", "/images/**", "/saveUser", "/", "/adminHeader", "https://fonts.googleapis.com/**", "/css/**", "/userFooter", "/home", "http://www.springframework.org/security/tags").permitAll()
		
		//valid pages for admin users only
		.antMatchers("/orderShipped", "/admin**", "/searchProd", "/prod", "/saveProduct", "/updateProduct").hasRole("ADMIN")
		
		//valid pages for normal users only
		.antMatchers("/user", "/item", "/cart", "/cartAdded", "/productview", "/search", "/home", "login", "signup", "/addOrderConfirm", "/addOrderConfirm", "/removecart").hasRole("USER")
		.anyRequest().authenticated()
		
		.and()
		.formLogin()
		.loginPage("/login")
		.defaultSuccessUrl("/home")
		.permitAll()
		
		.and()
		.logout().invalidateHttpSession(true)
		.clearAuthentication(true)
		.logoutRequestMatcher(new AntPathRequestMatcher("/logout")) //url for logout
		.logoutSuccessUrl("/home").permitAll(); //redirecting page after logout
	}

}
