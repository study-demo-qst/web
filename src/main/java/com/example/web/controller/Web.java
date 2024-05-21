package com.example.web.controller;

import com.example.common.Comm;
import com.example.logic.Logic; // Import the Logic class

public class Web {
    public void simpleMethod() {
        Comm comm = new Comm();
        String ret = comm.getComm();
        Logic logic = new Logic();
        ret += logic.getLogic();
        System.out.println(ret);
    }

    public String getLogic() {
        Comm comm = new Comm();
        String ret = "Logic" + comm.getComm();
        return ret;
    }

}
