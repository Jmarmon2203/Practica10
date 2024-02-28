package Modelo;

import java.io.Serializable;
import java.sql.Date;

public class Articulo implements Serializable{
    private int id;
    private String nombre;
    private String imagen;
    private double precio;
    private Date fecha;
    private String descripcion;

    public Articulo(int id, String nombre, String imagen, double precio, Date fecha, String descripcion) {
        this.id = id;
        this.nombre = nombre;
        this.imagen = imagen;
        this.precio = precio;
        this.fecha = fecha;
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    @Override
    public String toString() {
        return "Articulo{" + "id=" + id + ", nombre=" + nombre + ", imagen=" + imagen + ", precio=" + precio + ", fecha=" + fecha + ", descripcion=" + descripcion + '}';
    }
}
