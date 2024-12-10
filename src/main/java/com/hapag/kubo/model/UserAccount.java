

package com.hapag.kubo.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import java.io.File;             // To work with file paths (optional, if using LOAD_FILE)
import java.io.FileInputStream;  // To read files as InputStream for BLOBs
import java.io.InputStream;      // To handle binary data for BLOBs

@Setter
@Getter
@ToString
public class UserAccount {

    private Long id;

    private String firstname;
    private String surname;
    private String username;
    private String password;
    private Boolean active; 
    private byte[] photo;
    
    private Role role;

    public UserAccount() {

    }

}
