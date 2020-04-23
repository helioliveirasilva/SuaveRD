import Foundation
import UIKit

public struct Profile {
    public let nome: String
    public  let idade: Int
    public  let peso: Int
    public let altura: Float
    public  let doencaRespiratoria: [String]
    public let doencaCardiaca: [String]
    public let transtornoMental: [String]
    public let outrasDoencas: [String]
    public let predisposicao: [String]
    public let foto: UIImage

}


public var perfil: Profile = Profile(
    
    nome: "Hélio Silva",
    idade: 21,
    peso: 85,
    altura: 1.83,
    doencaRespiratoria: ["asma", "rinite", "sinusite"],
    doencaCardiaca: ["none"],
    transtornoMental: ["none"],
    outrasDoencas: ["TAG"],
    predisposicao: ["none"],
    foto: UIImage(imageLiteralResourceName: "perfilHelio.png")
)


public var doencaTitleArray: [String] = ["Doenças Respiratórias","Doenças Cardíacas","Transtornos Mentais","Outras Doenças","Predisposições Genéticas"]
public var doencaIconArray: [UIImage] = [UIImage(imageLiteralResourceName: "respiratoria.png"),UIImage(imageLiteralResourceName: "cardiacas.png"),UIImage(imageLiteralResourceName: "mentais.png"),UIImage(imageLiteralResourceName: "outrasdoencas.png"),UIImage(imageLiteralResourceName: "genetica.png")]
