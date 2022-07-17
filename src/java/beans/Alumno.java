package beans;

import java.text.DecimalFormat;

public class Alumno
{
    private String matricula;
    private String nombre;
    private String apellidos;
    private int cjv;
    private int dwi;
    private int ecbd;
    private double prom;
    
    public Alumno() 
    {
        matricula = nombre = apellidos = " ";
        cjv = dwi = ecbd = 0;
        prom = 0.0;
    }
    public Alumno(String matricula, String nombre, String apellidos,
            int cjv, int dwi, int ecbd) 
    {
        this.matricula = matricula;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.cjv  =  cjv;
        this.dwi  =  dwi;
        this.ecbd =  ecbd;
    }
    
    public String getMatricula()
    {
        return matricula;
    }
    public void setMatricula(String matricula)
    {
        this.matricula = matricula;
    }
    public String getNombre()
    {
        return nombre;
    }
    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }
    public String getApellidos()
    {
        return apellidos;
    }
    public void setApellidos(String apellidos)
    {
        this.apellidos = apellidos;
    }
    public int getCjv()
    {
        return cjv;
    }
    public void setCjv(int cjv)
    {
        this.cjv = cjv;
    }
    public int getDwi()
    {
        return dwi;
    }
    public void setDwi(int dwi)
    {
        this.dwi = dwi;
    }
     public int getEcbd()
    {
        return ecbd;
    }
    public void setEcbd(int ecbd)
    {
        this.ecbd = ecbd;
    }
    public double calcularProm()
    {
     
         prom = (cjv+dwi+ecbd)/3.0;
         DecimalFormat df=new DecimalFormat("#.00"); 
         prom =Double.parseDouble(df.format(prom));
         return prom;
    }
}