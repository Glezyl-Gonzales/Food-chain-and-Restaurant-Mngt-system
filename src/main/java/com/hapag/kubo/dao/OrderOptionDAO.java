
package com.hapag.kubo.dao;

import com.hapag.kubo.model.OrderOption;
import java.util.ArrayList;

public interface OrderOptionDAO {

    public Long getMaxId();

//    add Category
    public void addOrderOption(OrderOption orderOption);

//    update Category
    public void updateOrderOption(OrderOption orderOption);

//    delete Category
    public void deleteOrderOption(OrderOption orderOption);

//    list of Category
    public ArrayList<OrderOption> selectOrderOption();

    public void comboBoxOrderOption();

}
