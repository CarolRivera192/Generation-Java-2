package br.com.generation.lojagames.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import br.com.generation.lojagames.model.ProdutoModel;

@Repository
public interface ProdutoRepository extends JpaRepository <ProdutoModel, Long>{

	public List<ProdutoModel> findAllByNomeContainingIgnoreCase (String nome);
	//Criar uma collection List que procura mais de um atributo 
}