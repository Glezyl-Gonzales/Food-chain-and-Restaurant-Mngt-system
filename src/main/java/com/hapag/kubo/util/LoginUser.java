

package com.hapag.kubo.util;

import com.hapag.kubo.model.UserAccount;

public class LoginUser {
    private static UserAccount userAccount;

    /**
     * @return the userAccount
     */
    public static UserAccount getUserAccount() {
        return userAccount;
    }

    /**
     * @param aUserAccount the userAccount to set
     */
    public static void setUserAccount(UserAccount aUserAccount) {
        userAccount = aUserAccount;
    }
}
