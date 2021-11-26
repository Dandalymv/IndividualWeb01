package model.DAO;

import java.util.List;

import model.Oficina;


public interface IOficinaDAO {
	
	public void create(Oficina c);
	public List<Oficina> readAll();
	public Oficina readOne(int id);
	public void update(Oficina c);
	public void delete(int id);
	public void delete(Oficina c);

}
