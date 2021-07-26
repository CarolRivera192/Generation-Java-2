package br.com.generation.farmacia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import br.com.generation.farmacia.model.Categoria;
import br.com.generation.farmacia.repository.CategoriaRepository;


@RestController //Indica que a classe é a controller(Recebe qualquer requisição HTTP e vai responde-las de acordo com os verbos)
@RequestMapping ("/categorias") //Indica um endpoint que vai ser acessado por essa classe(URL)
@CrossOrigin ("*") //Diz que a classe aceita requesições de qualquer origem (Front end)
public class CategoriaController {
	
	@Autowired //Injeção de Dependência, passa o controle para o repository(cria e instancia objetos)
	private CategoriaRepository repository; // acesso ao banco de dados
	
	//========================= Find All ==============================//
	
	@GetMapping
	public ResponseEntity<List<Categoria>> GetAll() {
		return ResponseEntity.ok(repository.findAll());
	}
	
	//========================= Find By Id ============================//
	
	@GetMapping ("/{id}")
	public ResponseEntity<Categoria> GetById(@PathVariable long id) {
		return repository.findById(id)
				.map(resp -> ResponseEntity.ok(resp))
				.orElse(ResponseEntity.notFound().build());
	}
	
	//========================= Find By Tipo ============================//
	
	@GetMapping ("/descricao/{descricao}")
	public ResponseEntity<List<Categoria>> GetByDescricao(@PathVariable String descricao) { 
		return ResponseEntity.ok(repository.findAllByTipoContainingIgnoreCase(descricao));
	}
	
	//======================== Post Categoria ===========================//
	
	@PostMapping
	public ResponseEntity<Categoria> post (@RequestBody Categoria categoria) {
		return ResponseEntity.status(HttpStatus.CREATED).body(repository.save(categoria));
	}
	
	//========================= Put Categoria ============================//
	
	@PutMapping
	public ResponseEntity<Categoria> put (@RequestBody Categoria categoria) {
		return ResponseEntity.status(HttpStatus.OK).body(repository.save(categoria));
	}
	
	//======================== Delete Categoria ===========================//
	
	@DeleteMapping ("/{id}") //O que esta entre chaves é uma variavel
	public void delete(@PathVariable long id) { 
		repository.deleteById(id);
	}

}
