/* ************************************************************************ *
*    PROGRAM_NAME, VERSION                                                 *
*    BRIEF_DESCRIPTION                                                     *
*                                                                          *
*    Copyright (C) 2019 by Samuel De Goes Lima                             *
*                                                                          *
*    This program is free software; you can redistribute it and/or modify  *
*    it under the terms of the GNU General Public License as published by  *
*    the Free Software Foundation; either version 2 of the License, or     *
*    (at your option) any later version.                                   *
*                                                                          *
*    This program is distributed in the hope that it will be useful,       *
*    but WITHOUT ANY WARRANTY; without even the implied warranty of        *
*    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
*    GNU General Public License for more details.                          *
*                                                                          *
*    You should have received a copy of the GNU General Public License     *
*    along with this program; if not, write to the                         *
*    Free Software Foundation, Inc.,                                       *
*    59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.             *
*                                                                          *
*    To contact the author, please write to:                               *
*    Samuel De Goes Lima <samugoes@gmail.com>                              *
*    Webpage: http://www.upe.br                                            *
*    Phone: +55 (87) 98163-8326                                            *
* ************************************************************************ *
* 
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
% Regras:  
%           1. O cantor do Maranhão é mais novo que o Agnaldo.
%           2. O cantor do Paraná é 5 anos mais novo que o cantor
%           de rock.
%           3. Entre o cantor de sertanejo e o cantor do Maranhão,
%           um tem 25 anos e o outro tem 30 anos, não
%           necessariamente nessa ordem.
%           4. O cantor do Paraná tem 30 anos ou canta pop.
%           5. Marcos é 5 anos mais velho que o cantor do Paraná.
%           6. O cantor de 35 anos não é de São Paulo.
%           7. O cantor do Maranhão é mais novo que o Francisco.
%           8. Agnaldo não canta samba. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

cantor(agnaldo).
cantor(francisco).
cantor(luan).
cantor(marcos).
idade(20).
idade(25).
idade(30).
idade(35).
estilo(pop).
estilo(rock).
estilo(samba).
estilo(sertanejo).
estado(goias).
estado(maranhao).
estado(parana).
estado(sampa). 

%inferencia
goal :-
    tudodiferente(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    tab(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    writeln('\n\n Aqui estao os resultados\n'),
    writef('%w %w %w\n',[Agnaldo,AgId,AgEs,AgUf]),
    writef('%w %w %w\n',[Francisco,FrId,FrEs,FrUf]),
    writef('%w %w %w\n',[Luan,LuId,LuEs,LuUf]),
    writef('%w %w %w\n',[Marcos,MaId,MaEs,MaUf]).

tab(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf):-
    regra1(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    regra2(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    regra3(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    regra4(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    regra5(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    regra6(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    regra7(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf),
    regra8(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf).

tudodiferente(Agnaldo,AgId,AgEs,AgUf,Francisco,FrId,FrEs,FrUf,Luan,LuId,LuEs,LuUf,Marcos,MaId,MaEs,MaUf):-
    cantor(Agnaldo),
    cantor(Francisco),
    not(Agnaldo=Francisco),
    cantor(Luan),
    not(Agnaldo=Luan),
    not(Luan=Francisco),
    cantor(Marcos),
    not(Agnaldo=Marcos),
    not(Marcos=Luan),
    not(Marcos=Francisco),
    idade(AgId),
    idade(FrId),
    not(AgId=FrId),
    idade(LuId),
    not(AgId=LuId),
    not(LuId=FrId),
    idade(MaId),
    not(AgId=MaId),
    not(MaId=LuId),
    not(MaId=FrId),
    estilo(AgEs),
    estilo(FrEs),
    not(AgEs=FrEs),
    estilo(LuEs),
    not(AgEs=LuEs),
    not(LuEs=FrEs),
    estilo(MaEs),
    not(AgEs=MaEs),
    not(FrEs=MaEs),
    not(LuEs=MaEs),
    estado(AgUf),
    estado(FrUf),
    not(AgUf=FrUf),
    estado(LuUf),
    not(AgUf=LuUf),
    not(LuUf=FrUf),
    estado(MaUf),
    not(AgUf=MaUf),
    not(MaUf=LuUf),
    not(MaUf=FrUf).


%regra1:  O cantor do Maranhão é mais novo que o Agnaldo. 
%

regra1(agnaldo,_,_,_,francisco,_,_,_,luan,_,_,_,marcos,_,_,_).

regra1(agnaldo,Ida,_,_,francisco,Idm,_,maranhao,luan,_,_,_,marcos,_,_,_):-
    Idm < Ida.
regra1(agnaldo,Ida,_,_,francisco,_,_,_,luan,Idm,_,maranhao,marcos,_,_,_):-
    Idm < Ida.
regra1(agnaldo,Ida,_,_,francisco,_,_,_,luan,_,_,_,marcos,Idm,_,maranhao):-
    Idm < Ida.

regra2(agnaldo,AgId,_,parana,francisco,FrId,rock,_,luan,_,_,_,marcos,_,_,_):-
    AgId is FrId + 5.
regra2(agnaldo,AgId,_,parana,francisco,_,_,_,luan,LuId,rock,_,marcos,_,_,_):-
    AgId is LuId + 5.
regra2(agnaldo,AgId,_,parana,francisco,_,_,_,luan,_,_,_,marcos,MaId,rock,_):-
    AgId is MaId + 5.
regra2(agnaldo,AgId,rock,_,francisco,FrId,_,parana,luan,_,_,_,marcos,_,_,_):-
    FrId is AgId + 5.
regra2(agnaldo,_,_,_,francisco,FrId,_,parana,luan,LuId,rock,_,marcos,_,_,_):-
    FrId is LuId + 5.
regra2(agnaldo,_,_,_,francisco,FrId,_,parana,luan,_,_,_,marcos,MaId,rock,_):-
    FrId is MaId + 5.
regra2(agnaldo,AgId,rock,_,francisco,_,_,_,luan,LuId,_,parana,marcos,_,_,_):-
    LuId is AgId + 5.
regra2(agnaldo,_,_,_,francisco,FrId,rock,_,luan,LuId,_,parana,marcos,_,_,_):-
    LuId is FrId + 5.
regra2(agnaldo,_,_,_,francisco,_,_,_,luan,LuId,_,parana,marcos,MaId,rock,_):-
    LuId is MaId + 5.
regra2(agnaldo,AgId,rock,_,francisco,_,_,_,luan,_,_,_,marcos,MaId,_,parana):-
    MaId is AgId + 5.
regra2(agnaldo,_,_,_,francisco,FrId,rock,_,luan,_,_,_,marcos,MaId,_,parana):-
    MaId is FrId + 5.
regra2(agnaldo,_,_,_,francisco,_,_,_,luan,LuId,rock,_,marcos,MaId,_,parana):-
    MaId is LuId + 5.

% regra3:   Entre o cantor de sertanejo e o cantor do Maranhão,
%           um tem 25 anos e o outro tem 30 anos, não
%           necessariamente nessa ordem.
%
regra3(agnaldo,30,_,maranhao,francisco,25,sertanejo,_,luan,_,_,_,marcos,_,_,_).
regra3(agnaldo,25,_,maranhao,francisco,30,sertanejo,_,luan,_,_,_,marcos,_,_,_).
regra3(agnaldo,30,_,maranhao,francisco,_,_,_,luan,25,sertanejo,_,marcos,_,_,_).
regra3(agnaldo,25,_,maranhao,francisco,_,_,_,luan,30,sertanejo,_,marcos,_,_,_).
regra3(agnaldo,25,_,maranhao,francisco,_,_,_,luan,_,_,_,marcos,30,sertanejo,_).
regra3(agnaldo,30,_,maranhao,francisco,_,_,_,luan,_,_,_,marcos,25,sertanejo,_).
regra3(agnaldo,_,_,_,francisco,_,_,_,luan,_,_,_,marcos,_,_,_).
regra3(agnaldo,_,_,_,francisco,_,_,_,luan,_,_,_,marcos,_,_,_).
regra3(agnaldo,_,_,_,francisco,_,_,_,luan,_,_,_,marcos,_,_,_).

regra4(agnaldo,30,_,_,francisco,_,_,_,luan,_,_,_,marcos,_,pop,_).
regra4(agnaldo,_,pop,_,francisco,30,_,_,luan,_,_,_,marcos,_,_,_).
regra4(agnaldo,_,_,_,francisco,30,_,_,luan,_,pop,_,marcos,_,_,_).
regra4(agnaldo,_,_,_,francisco,30,_,_,luan,_,_,_,marcos,_,pop,_).
regra4(agnaldo,_,pop,_,francisco,_,_,_,luan,30,_,_,marcos,_,_,_).
regra4(agnaldo,_,_,_,francisco,_,pop,_,luan,30,_,_,marcos,_,_,_).
regra4(agnaldo,_,_,_,francisco,_,_,_,luan,30,_,_,marcos,_,pop,_).
regra4(agnaldo,_,pop,_,francisco,_,_,_,luan,_,_,_,marcos,30,_,_).
regra4(agnaldo,_,_,_,francisco,_,pop,_,luan,_,_,_,marcos,30,_,_).
regra4(agnaldo,_,_,_,francisco,_,_,_,luan,_,pop,_,marcos,30,_,_).

regra5(agnaldo,AgId,_,parana,francisco,_,_,_,luan,_,_,_,marcos,AgId+5,_,_).
regra5(agnaldo,_,_,_,francisco,FrId,_,parana,luan,_,_,_,marcos,FrId+5,_,_).
regra5(agnaldo,_,_,_,francisco,_,_,_,luan,LuId,_,parana,marcos,LuId+5,_,_).

regra6(agnaldo,35,_,_,francisco,_,_,sampa,luan,_,_,_,marcos,_,_,_).
regra6(agnaldo,35,_,_,francisco,_,_,_,luan,_,_,sampa,marcos,_,_,_).
regra6(agnaldo,35,_,_,francisco,_,_,_,luan,_,_,_,marcos,_,_,sampa).
regra6(agnaldo,_,_,sampa,francisco,35,_,_,luan,_,_,_,marcos,_,_,_).
regra6(agnaldo,_,_,_,francisco,35,_,_,luan,_,_,sampa,marcos,_,_,_).
regra6(agnaldo,_,_,_,francisco,35,_,_,luan,_,_,_,marcos,_,_,sampa).
regra6(agnaldo,_,_,sampa,francisco,_,_,_,luan,35,_,_,marcos,_,_,_).
regra6(agnaldo,_,_,_,francisco,_,_,sampa,luan,35,_,_,marcos,_,_,_).
regra6(agnaldo,_,_,_,francisco,_,_,_,luan,35,_,_,marcos,_,_,sampa).
regra6(agnaldo,_,_,sampa,francisco,_,_,_,luan,_,_,_,marcos,35,_,_).
regra6(agnaldo,_,_,_,francisco,_,_,sampa,luan,_,_,_,marcos,35,_,_).
regra6(agnaldo,_,_,_,francisco,_,_,_,luan,_,_,sampa,marcos,35,_,_).

regra7(agnaldo,AgId,_,maranhao,francisco,FrId,_,_,luan,_,_,_,marcos,_,_,_):-
    AgId < FrId.
regra7(agnaldo,_,_,_,francisco,FrId,_,_,luan,LuId,_,maranhao,marcos,_,_,_):-
    LuId < FrId.
regra7(agnaldo,_,_,_,francisco,FrId,_,_,luan,_,_,_,marcos,MaId,_,maranhao):-
    MaId < FrId.

regra8(agnaldo,_,_,_,francisco,_,samba,_,luan,_,_,_,marcos,_,_,_).
regra8(agnaldo,_,_,_,francisco,_,_,_,luan,_,samba,_,marcos,_,_,_).
regra8(agnaldo,_,_,_,francisco,_,_,_,luan,_,_,_,marcos,_,samba,_).

