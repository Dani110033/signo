//
//  ViewController.swift
//  App Signo
//
//  Created by Enzo on 11/07/23.
//

import UIKit

class ViewController: UITableViewController {
    
    var signos: [String] = []
    var signficadosSignos : [String] = []

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //configure signos
        
        signos.append("Áries")
        signos.append("Touro")
        signos.append("Gêmeos")
        signos.append("Cãncer")
        signos.append("leão")
        signos.append("Virgem")
        signos.append("Libra")
        signos.append("Escorpião")
        signos.append("Sagitário")
        signos.append("Capricornio")
        signos.append("Aquário")
        signos.append("Peixes")
        
        
        //configura significado
        
        signficadosSignos.append("Os arianos são pessoas confiantes e impetuosas. No entanto, eles podem bater de frente com os outros porque são muito impacientes e honestos.")
        signficadosSignos.append("Os taurinos são considerados leais e persistentes. Ao mesmo tempo, eles são frequentemente conhecidos como preguiçosos e teimosos.")
        signficadosSignos.append("Os geminianos são altamente inteligentes e sociáveis. Por outro lado, também são considerados superficiais e indecisos.")
        signficadosSignos.append("Os cancerianos são pessoas caridosas e amigos leais. Por outro lado, eles também tendem a ser agressivos e são conhecidos por ficarem rabugentos em algumas situações.")
        signficadosSignos.append("Os leoninos são orgulhosos e corajosos, embora às vezes sejam um pouco arrogantes e competitivos demais.")
        signficadosSignos.append("Os virginianos são trabalhadores e organizados. Ao mesmo tempo, também são perfeccionistas, excessivamente críticos e que tendem a se preocupar muito.")
        signficadosSignos.append("Libra é notoriamente o signo de pessoas extrovertidas e inteligentes. É sociável,vaidoso e odeia tomar decisões difíceis.")
        signficadosSignos.append("Dizem que os escorpianos são caçadores de emoções. Eles também costumam ser invejosos e fascinados por tudo que é macabro.")
        signficadosSignos.append("Os sagitarianos são aventureiros, altamente independentes e muito imaginativos. Por outro lado, eles também são considerados sinceros demais e impacientes.")
        signficadosSignos.append("os capricornianos são considerados determinados e pragmáticos. Ao mesmo tempo, eles também são considerados pessoas conservadoras e sérias demais.")
        signficadosSignos.append("Os aquarianos são assertivos e criativos. Mas, também, podem ser solitários e impulsivos.")
        signficadosSignos.append("O pisciano é uma pessoa aventureira e compassiva, mas que pode ser um pouco ansiosa ou carente demais.")
       
    }

    override func  numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celulaReuso = "celulaReuso"
        let celula = tableView.dequeueReusableCell(withIdentifier: celulaReuso, for: indexPath)
        celula.textLabel?.text = signos[ indexPath.row]
        
        return celula
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController (title: "signficado do signo", message: signficadosSignos [indexPath.row], preferredStyle: .alert)
        
        let acaoConfirmar = UIAlertAction (title: "OK" , style:  .default , handler: nil)
        alertController.addAction (acaoConfirmar)
        
        present(alertController, animated: true, completion: nil)
        
        //print (significadossignos [indexpath.row])
}
    
}

