import Foundation
import UIKit


public struct Drogas {
    
    public let nome: String
    public let infoBasica: String
    public let modoUso: String
    public let efeito: String
    public let efeitoColateral: String
    public let recomBasica: String
    public let dosagemIdeal: String
    public let icone: UIImage
}




public var maconha:Drogas = Drogas(

    nome:"Maconha",
    infoBasica:"Informações Basicas da Maconha",
    modoUso:"Modo de Uso da Maconha",
    efeito:"Efeitos da Maconha",
    efeitoColateral:"Efeitos Colaterais da Maconha",
    recomBasica:"Recomendações Básicas da Maconha",
    dosagemIdeal:"Dosagem Ideal da Maconha",
    icone: UIImage(imageLiteralResourceName: "maconha.png")
)


public var tabaco:Drogas = Drogas(

    nome:"Tabaco",
    infoBasica:"Informações Basicas da Tabaco",
    modoUso:"Modo de Uso da Tabaco",
    efeito:"Efeitos da Tabaco",
    efeitoColateral:"Efeitos Colaterais da Tabaco",
    recomBasica:"Recomendações Básicas da Tabaco",
    dosagemIdeal:"Dosagem Ideal da Crack",
    icone: UIImage(imageLiteralResourceName: "tabaco.png")

)

public var alcool:Drogas = Drogas(

    nome:"Álcool",
    infoBasica:"Informações Basicas da Alcool",
    modoUso:"Modo de Uso da Alcool",
    efeito:"Efeitos da Alcool",
    efeitoColateral:"Efeitos Colaterais da Alcool",
    recomBasica:"Recomendações Básicas da Alcool",
    dosagemIdeal:"Dosagem Ideal da Alcool",
    icone: UIImage(imageLiteralResourceName: "alcool.png")

)

public var craque:Drogas = Drogas(

    nome:"Crack",
    infoBasica:"Informações Basicas da Crack",
    modoUso:"Modo de Uso da Crack",
    efeito:"Efeitos da Crack",
    efeitoColateral:"Efeitos Colaterais da Crack",
    recomBasica:"Recomendações Básicas da Crack",
    dosagemIdeal:"Dosagem Ideal da Crack",
    icone: UIImage(imageLiteralResourceName: "crack.png")

)


public var cocaina:Drogas = Drogas(

    nome:"Cocaina",
    infoBasica:"Informações Basicas da Cocaina",
    modoUso:"Modo de Uso da Cocaina",
    efeito:"Efeitos da Cocaina",
    efeitoColateral:"Efeitos Colaterais da Cocaina",
    recomBasica:"Recomendações Básicas da Cocaina",
    dosagemIdeal:"Dosagem Ideal da Cocaina",
    icone: UIImage(imageLiteralResourceName: "cocaina.png")

)

public var ecstasy:Drogas = Drogas(

    nome:"Ecstasy",
    infoBasica:"Informações Basicas da Ecstasy",
    modoUso:"Modo de Uso da Ecstasy",
    efeito:"Efeitos da Ecstasy",
    efeitoColateral:"Efeitos Colaterais da Ecstasy",
    recomBasica:"Recomendações Básicas da Ecstasy",
    dosagemIdeal:"Dosagem Ideal da Ecstasy",
    icone: UIImage(imageLiteralResourceName: "ecstasy.png")

)

public var lsd:Drogas = Drogas(

    nome:"LSD",
    infoBasica:"Informações Basicas da LSD",
    modoUso:"Modo de Uso da LSD",
    efeito:"Efeitos da LSD",
    efeitoColateral:"Efeitos Colaterais da LSD",
    recomBasica:"Recomendações Básicas da LSD",
    dosagemIdeal:"Dosagem Ideal da LSD",
    icone: UIImage(imageLiteralResourceName: "lsd.png")

)

public var heroina:Drogas = Drogas(

    nome:"Heroína",
    infoBasica:"Informações Basicas da Heroína",
    modoUso:"Modo de Uso da Heroína",
    efeito:"Efeitos da Heroína",
    efeitoColateral:"Efeitos Colaterais da Heroína",
    recomBasica:"Recomendações Básicas da Heroína",
    dosagemIdeal:"Dosagem Ideal da Heroína",
    icone: UIImage(imageLiteralResourceName: "heroina.png")
    
)

public var cogumelo:Drogas = Drogas(

    nome:"Cogumelo",
    infoBasica:"Informações Basicas da Cogumelo",
    modoUso:"Modo de Uso da Cogumelo",
    efeito:"Efeitos da Cogumelo",
    efeitoColateral:"Efeitos Colaterais da Cogumelo",
    recomBasica:"Recomendações Básicas da Cogumelo",
    dosagemIdeal:"Dosagem Ideal da Cogumelo",
    icone: UIImage(imageLiteralResourceName: "cogumelo.png")
    
)

public var ketamina:Drogas = Drogas(

    nome:"Ketamina",
    infoBasica:"Informações Basicas da Ketamina",
    modoUso:"Modo de Uso da Ketamina",
    efeito:"Efeitos da Ketamina",
    efeitoColateral:"Efeitos Colaterais da Ketamina",
    recomBasica:"Recomendações Básicas da Ketamina",
    dosagemIdeal:"Dosagem Ideal da Ketamina",
    icone: UIImage(imageLiteralResourceName: "ketamina.png")
    
)


public var drogasArray: [Drogas] = [tabaco, alcool, maconha, cocaina, ecstasy, lsd, heroina, ketamina, craque, cogumelo]

public var titlesArray: [String] = ["Nome", "Informações Básicas","Modos de Uso", "Efeitos","Efeitos Colaterais","Recomendações Básicas","Dosagem Ideal"]
