package main.java.conexao;

import org.neo4j.driver.v1.AuthTokens;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.GraphDatabase;
import org.neo4j.driver.v1.Session;

public class Connection {
	
	private static Session session = null;
	private static Driver driver = null;
	
	public static Session initConnection(){
		driver = GraphDatabase.driver( "bolt://104.131.53.221", AuthTokens.basic( "neo4j", "atislabs" ) );
		Session session = driver.session();
		
		return session;
	}
	
}
