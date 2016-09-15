package main.java;

import org.neo4j.driver.v1.Record;
import org.neo4j.driver.v1.StatementResult;


import main.java.conexao.AtasDAO;

public class Main {
	public static void main(String[] args) {
		String query = "match (n) return n.nome AS id";
		
		StatementResult result = new AtasDAO().buscar(query);
		
		if(result != null){
			 while( result.hasNext() ){
			        Record record = result.next();
			        System.out.println( record.get("id").asString() );
			    }
		}
	}
}
