
import React, { useContext } from 'react';
import { useEffect, useState } from 'react';

import FormDoTicket from './componentes/formDoTicket/formDoTicket';
import { formatDate } from './util/dataUtil';
import { Link, Route, Routes, useNavigate } from 'react-router-dom';
import Home from './pages/Home';  
import { RequireAuth } from './contexts/Auth/RequireAuth';
import { AuthContext } from './contexts/Auth/AuthContext';
import  TicketFunction  from './pages/Ticket';
import { Chamadassup } from './2.SUPORTE/pages/Chamadassup';
import { Adm } from './1.ADMIN/Home/'
import { Edituser } from './pages/Menu/editaruser';
import { Histuser } from './pages/Menu/historico';
import logoInsta from './styles/img/logoInsta.png';
import logoTiktok from './styles/img/logoTiktok.png';
import logoTwitter from './styles/img/logoTwitter.png';
import logoGithub from './styles/img/logoGithub.png';
import Cadastro from './pages/Registro';


function App() {
  const auth = useContext(AuthContext);
  const navigate = useNavigate();


  const handleLogout = async () => {
    await auth.logout();
    navigate('/');
  }

  const isChamadassupPage = window.location.pathname === '/Chamadassup';
  const isEdituserPage = window.location.pathname === '/edituser';
  const isHistuserPage = window.location.pathname === '/histuser'

  return (
    <div className='bodyAPP'>
        <div>
          <div className='headAPP'>
          <div className='um'>
          <div className='buttonAPP'>
            <Link to='/ticket'><button>Enviar ticket</button></Link>
          </div>
          <div className='logoApp'>
            <Link to='/'><img id='logo' alt='logo' src='logo.png' /></Link>
            
          </div>
          <div className='menuAPP'>
            <button>
              <hr />
              <hr />
              <hr />
            </button>
          </div>
          </div>
          
        </div>

          <div className='dois'>
          <Link to='/Chamadassup'><button>Acessar Interface de Suporte</button></Link>
          <Link to='/Administrador'><button>Acessar Interface de Administrador</button></Link>
          <Link to='/edituser'><button>Editar Creedenciais</button></Link>
          <Link to='/Histuser'><button>Historico de Chamadas</button></Link>
          {auth.usuario && <button onClick={handleLogout}>Sair</button>}
        </div>
        </div>
        
      <Routes>
        <Route path="/" element={<Home />} />
        <Route path="/ticket" element={<RequireAuth><TicketFunction /></RequireAuth>} />
        <Route path='/edituser' element={<RequireAuth><Edituser /></RequireAuth>} />
        <Route path='/histuser' element={<RequireAuth><Histuser /></RequireAuth>} />
        <Route path="/Chamadassup" element={<RequireAuth><Chamadassup /></RequireAuth>} />
        <Route path="/Administrador" element={<RequireAuth><Adm /></RequireAuth>} />
        <Route path="/Cadastro" element={<RequireAuth><Cadastro></Cadastro></RequireAuth>} />

      </Routes>

      
        <footer>
          <div className='cima'>

            <div className='parte1'>
            <p>e-mail: bettercallus.code@gmail.com</p>   
            </div>

            <div className='parte2'>
              <a href="https://github.com/CODE1na/BetterCallUs"> <img src={logoGithub} alt="Github" title="Logo Github" /></a>
              <a href="https://www.instagram.com/bettercallus.code/?next=%2F"> <img src={logoInsta} alt="Instagram" title="Logo Instagram" /></a>
              <a href="https://www.tiktok.com/@bettercallus.code"> <img src={logoTiktok} alt="Tiktok" /></a>
              <a href="https://twitter.com/better_code_us"> <img src={logoTwitter} alt="Twitter" /></a>
              </div>

              <div className='parte3'>
              <p>WhatsApp/ Telefone: (**) ****-****</p>
              </div>

          </div>

          <hr></hr>
          <p>©CODEÍNA 2023 - Todos os Direitos Reservados</p>
        </footer>

    </div>
  )
}

export default App;
