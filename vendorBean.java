 
package POJO;

import java.sql.Date;

 
public class vendorBean {
  private String adddesc;
  private String vname;
  private Date date;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getVname() {
        return vname;
    }

    public void setVname(String vname) {
        this.vname = vname;
    }

    public String getAdddesc() {
        return adddesc;
    }

    public void setAdddesc(String adddesc) {
        this.adddesc = adddesc;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }
  private String skills;

   
  
}
