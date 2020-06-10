/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DatabaseTest;

import Database.Entities.Members;
import Database.Models.MemberModel;
import java.util.List;

/**
 *
 * @author sean
 */
public class SelectTest {
    
    
    public static void main(String[] args) {
        MemberModel memberModel = new MemberModel();
        
        
        
        List<Members> members = memberModel.getMembers(MemberModel.ATTRIBUTES.NAME,"endmond");
        
        for(Members member : members)
        {
            System.out.println(member.getName());
        }
        
    }
    
}
