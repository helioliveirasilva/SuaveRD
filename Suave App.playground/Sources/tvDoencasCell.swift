import Foundation
import UIKit

class DoencaCustomCell: UITableViewCell {
    
    public let tituloDoencas = UILabel()
    public let labelDoecas = UILabel()
    public let iconePrincipal = UIImageView()
    public var variaveis: Int? {

        didSet{
            guard let indexPath = variaveis else { return }
            
            tituloDoencas.text = doencaTitleArray[indexPath]
            iconePrincipal.image = doencaIconArray[indexPath]
        }
        
        
    }
    
    override public init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addSubview(tituloDoencas)
        self.addSubview(labelDoecas)
        self.addSubview(iconePrincipal)
        setupTitulo()
        setupDoencas()
        setupIcone()
    }
    
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public func setupTitulo(){
        
        tituloDoencas.frame = CGRect(x: 58, y: 13, width: 317, height: 22)
        tituloDoencas.font = UIFont.systemFont(ofSize: 17)
        tituloDoencas.textColor = .black
        tituloDoencas.text = "testando"
    }
    
    public func setupDoencas(){
        labelDoecas.frame = CGRect(x: 58, y: 37, width: 317, height: 15)
        labelDoecas.font = UIFont.systemFont(ofSize: 13)
        labelDoecas.text = "nomes de doenca, nomes de doenca"
        labelDoecas.textColor = UIColor(red: 138/255, green: 138/255, blue: 142/255, alpha: 1)
        
        
    }
    
    public func setupIcone() {
        
        iconePrincipal.frame = CGRect(x: 16, y: 16, width: 29, height: 29)
        iconePrincipal.backgroundColor = .orange
        iconePrincipal.layer.cornerRadius = 7
        iconePrincipal.layer.masksToBounds = true
        iconePrincipal.image = UIImage(imageLiteralResourceName: "respiratoria.png")
        
        
        
    }
    
    
    
}
