package main;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class UTFTest {
public static void main(String[] args) {
	Contato jao = new Contato();
	jao.setNome("Jão");
	jao.setEmail(null);
	jao.setEndereco("Zé");
	jao.setDataNascimento(null);
	ContatoDao	dao	=	new	ContatoDao();
	//	método	elegante
	dao.adiciona(jao);
	System.out.println("Gravado!");
	}
}
