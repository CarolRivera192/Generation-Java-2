package br.com.generation.lojagames.security;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import br.com.generation.lojagames.model.Usuario;

/*User Details é uma Classe que contem todos os métodos que 
 * podemos chamar no User Details Service e em outras camadas.*/

public class UserDetailsImpl implements UserDetails{
	
private static final long serialVersionUID = 1l;//Obrigatorio pois estou usando user details 
	
	//Usa o user details para fazer o login, então tenho que criar 
	private String userName;
	private String password;

	public UserDetailsImpl(Usuario user) {
		super();
		this.userName = user.getUsuario();
		this.password = user.getSenha();
	}
	
	public UserDetailsImpl() {} //Construtor vazio: para criar um objeto vazio para receber dados depois

	/* Collection com todos os direitos de acesso do Usuário (Rols => Permissões) 
	 Não usaremos nesta implementação*/
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override//Recupera a senha do Token
	public String getPassword() {
		// TODO Auto-generated method stub
		return password;
	}

	@Override//Recupera o usuário do Token
	public String getUsername() {
		// TODO Auto-generated method stub
		return userName;
	}

	@Override//Informa se a conta do usuário expirou
	public boolean isAccountNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override//Informa se a conta do usuário está bloqueada
	public boolean isAccountNonLocked() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override//Informa se a senha do usuário expirou
	public boolean isCredentialsNonExpired() {
		// TODO Auto-generated method stub
		return true;
	}

	@Override//Informa se a conta do usuário está ativa
	public boolean isEnabled() {
		// TODO Auto-generated method stub
		return true;
	}

}
