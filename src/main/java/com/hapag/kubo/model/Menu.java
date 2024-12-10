

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
public class Menu {

    private Long id;
    private String recipe;
    private String ingredients;
    private Float price;
    private byte[] photo;
    private Category category;
    private Boolean deleted;

    public Menu() {

    }

}
