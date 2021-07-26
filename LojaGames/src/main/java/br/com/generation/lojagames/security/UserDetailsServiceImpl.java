package br.com.generation.lojagames.security;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.com.generation.lojagames.model.Usuario;
import br.com.generation.lojagames.repository.UsuarioRepository;

/*User Details Service: Classe de serviço (@Service) responsável diretamente pela validação 
 * da senha e pela criação do Basic token. */

@Service
public class UserDetailsServiceImpl implements UserDetailsService{

	@Autowired //Injeção de dependência (UsuarioRepository)
	private UsuarioRepository userRepository;
	
	@Override
	public UserDetails loadUserByUsername (String userName) throws UsernameNotFoundException{
		
		//Pesquisa o usuário no banco de dados
		Optional<Usuario> user = userRepository.findByUsuario(userName);
		user.orElseThrow(()-> new UsernameNotFoundException(userName + "not found. "));
		
		//Se encontrar, retorna um novo objeto da Classe User DetailsImpl
		return user.map(UserDetailsImpl :: new).get();
	}
}
