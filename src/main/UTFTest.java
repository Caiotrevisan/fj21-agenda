package main;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class UTFTest {
public static void main(String[] args) {
	Contato jao = new Contato();
	jao.setNome("J�o");
	jao.setEmail(null);
	jao.setEndereco("Z�");
	jao.setDataNascimento(null);
	ContatoDao	dao	=	new	ContatoDao();
	//	m�todo	elegante
	dao.adiciona(jao);
	System.out.println("Gravado!");
	}
}
