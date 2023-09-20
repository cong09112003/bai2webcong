package survey.business;

public class Transfer {
    private String howHear;
    private String likeToReceive;
    private String contact;
    public Transfer() {
        howHear = "";
        likeToReceive = "";
        contact = "";
    }
    public Transfer(String howHear, String likeToReceive,String contact ){
        this.howHear=howHear;
        this.likeToReceive=likeToReceive;
        this.contact=contact;
    }
    public String getHowHear() {
        return howHear;
    }
    public void setHowHear(String howHear) {
        this.howHear= howHear;
    }

    public String getLikeToReceive() {
        return likeToReceive;
    }
    public void setLikeToReceive(String likeToReceive) {
        this.likeToReceive= likeToReceive;
    }

    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
}
