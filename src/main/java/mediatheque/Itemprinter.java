/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package mediatheque;

/**
 *
 * @author Marie
 */
public class Itemprinter implements ItemVisitor{
    public void visit(CD cd){
        System.out.println(cd);
}
    public void visit(Book book){
    System.out.println(book);
}
}
