package com.stfn.beans;


import java.util.GregorianCalendar;

/**
 * Created by Олюнь on 27.08.2017.
 */
public class User {
    private String login;
    private String password;
    private String name;
    private String surname;
    private GregorianCalendar bornOfDate;


    public User() {
    }

    public String getLogin() {
        return login;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public GregorianCalendar getBornOfDate() {
        return bornOfDate;
    }

    public void setBornOfDate(GregorianCalendar bornOfDate) {
        this.bornOfDate = bornOfDate;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
