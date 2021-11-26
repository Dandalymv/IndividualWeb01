package model;

public class Usuario {
	private String nombre, tipo;
	private Integer run;

	public Usuario() {

	}

	public Usuario(String nombre, String tipo, Integer run) {
		super();
		this.nombre = nombre;
		this.tipo = tipo;
		this.run = run;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public Integer getRun() {
		return run;
	}

	public void setRun(Integer run) {
		this.run = run;
	}

	@Override
	public String toString() {
		return "Usuario [nombre=" + nombre + ", tipo=" + tipo + ", run=" + run + "]";
	}

}
