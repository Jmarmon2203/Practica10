package Modelo;

import java.io.Serializable;

public class Cliente implements Serializable{
    private String clienteID;
    private String password;
    private int articulo_id;
    private double compraTotal;

    public Cliente(String clienteID, String password, int articulo_id, double compraTotal) {
        this.clienteID = clienteID;
        this.password = password;
        this.articulo_id = articulo_id;
        this.compraTotal = compraTotal;
    }

    public String getClienteID() {
        return clienteID;
    }

    public void setClienteID(String clienteID) {
        this.clienteID = clienteID;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getArticulo_id() {
        return articulo_id;
    }

    public void setArticulo_id(int articulo_id) {
        this.articulo_id = articulo_id;
    }

    public double getCompraTotal() {
        return compraTotal;
    }

    public void setCompraTotal(double compraTotal) {
        this.compraTotal = compraTotal;
    }
}
