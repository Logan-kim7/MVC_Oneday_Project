package com.biz.model;

import java.util.Collection;

import org.apache.ibatis.type.Alias;
import org.springframework.security.core.GrantedAuthority;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Alias("UserDetail")
@Getter
@Setter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class UserDetailsVO {
	
private static final long serialVersionUID = 1L;
	
	private long id;
	
	private String username;
	private String password;
	
	private boolean enabled;
	private boolean accountNonExpired;
	private boolean accountNonLocked;
	private boolean credentialsNonExpired;
	
	// List<GrandtedAuthriy>
	private Collection<? extends GrantedAuthority> authorities;
	
	// 프로젝트에서 필요한 별도의 필드변수 선언
	private String m_name;
	private String m_tel;
	private String m_email;
	private String m_address;
	

}
