package app.controller.security;

import app.dao.UsuarioDAO;
import app.model.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

@Service("userDetailsService")
public class UserDetailServiceImp implements UserDetailsService {

    @Autowired
    UsuarioDAO usuarioDAO;
    
    @Autowired
    Assembler assembler;
    

    @Override
    public UserDetails loadUserByUsername(String string) throws UsernameNotFoundException {

        Usuario autenticado = usuarioDAO.getByUserName(string);
        
        if (autenticado == null) {
            throw new UsernameNotFoundException("usuario no encontrado");
        }

        return assembler.buildUserFromUserEntity(autenticado);

    }
}
