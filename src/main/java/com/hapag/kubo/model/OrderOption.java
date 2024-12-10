

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
public class OrderOption {
    private Long id;
    private String orderOption;
    private String description;
}
