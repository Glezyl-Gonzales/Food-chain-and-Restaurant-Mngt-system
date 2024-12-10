

package com.hapag.kubo.dao;

import com.hapag.kubo.model.Category;
import com.hapag.kubo.model.Menu;
import com.hapag.kubo.model.TodaysMenu;
import java.util.ArrayList;
import java.util.LinkedList;

public interface TodaysMenuDAO {

    public Long getMaxId();

//    add TodaysMenu
    public void addTodaysMenu(TodaysMenu todaysMenu);

//    update TodaysMenu
    public void updateTodaysMenu(TodaysMenu todaysMenu);

//    delete TodaysMenu
    public void deleteTodaysMenu(TodaysMenu todaysMenu);

//    list of TodaysMenu
    public ArrayList<TodaysMenu> selectTodaysMenu();

    public void comboBoxTodaysMenu();

    public ArrayList<TodaysMenu> getMenuList();

    public Boolean selectTodaysMenu(Long id);

    public Boolean getTodaysMenuDRemove(Long menuId);

    public void updateTodaysMenu(Long id);

    public Boolean getTodaysMenuDeletedRecover(Long menuId);

    public void addMenuOfTheDay(Menu menu);

    public ArrayList<Category> selectTodaysMenuCategory();

//    public LinkedList<com.hapag.kubo.model.TodaysMenu> getMenuByCategoryIdMenuId(Long id);
    public abstract LinkedList<com.hapag.kubo.model.TodaysMenu> getMenuByCategoryIdMenuId(Long id);

    public void updateMenuPrice(TodaysMenu tm);

}
