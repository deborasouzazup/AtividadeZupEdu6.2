//
//  TransacaoTableViewCell.swift
//  LearningTask-6.2
//
//  Created by Debora.souza on 21/11/22.
//

import UIKit

class TransacaoTableViewCell: UITableViewCell {

 
    @IBOutlet weak var transacaoImageView: TransacaoImageView!
    @IBOutlet weak var transferenciaLabel: UILabel!
    @IBOutlet weak var dataLabel: UILabel!
    
    @IBOutlet weak var interessadoLabel: UILabel!
    
    @IBOutlet weak var valorTransacaoLabel: UILabel!
    
    @IBOutlet weak var subTipoLabel: UILabel!
 
    func setup(_ transacao: Transacao) {
            transacaoImageView.tipoDeTransacao = transacao.tipo
            transferenciaLabel.text = transacao.tipo.titulo
            dataLabel.text = DateFormatter.format(date: transacao.data, to: .dayPlusAbbreviatedMonth)
            valorTransacaoLabel.text = NumberFormatter.formatToCurrency(decimal: transacao.valor)
            
            if let interessado = transacao.interessado {
                interessadoLabel.text = interessado
                interessadoLabel.isHidden = false
            }
            
            if let subtipo = transacao.tipo.subtipo {
                subTipoLabel.text = subtipo
                subTipoLabel.isHidden = false
            }
        }
    
    override func prepareForReuse() {
            interessadoLabel.text = nil
            interessadoLabel.isHidden = true
            
            subTipoLabel.text = nil
            subTipoLabel.isHidden = true
        }
    
}
