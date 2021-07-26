package br.com.generation.farmacia.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import br.com.generation.farmacia.model.Produto;

public interface ProdutoRepository extends JpaRepository<Produto, Long>{
	
	public List<Produto> findAllByNomeContainingIgnoreCase (String nome);
	//Criar uma collection List que procura mais de um atributo 
	
}
