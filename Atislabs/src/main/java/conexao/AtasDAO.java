package main.java.conexao;
import org.neo4j.driver.v1.AuthTokens;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.GraphDatabase;
import org.neo4j.driver.v1.Record;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.StatementResult;

public class AtasDAO {
	
	public StatementResult executeQuery(String query){
		if(query.equals("") || query == null){
			return null;
		}
		else{
			try( Session session = Connection.initConnection() ){
			    return session.run( query );   
			}
		}
	}
}
