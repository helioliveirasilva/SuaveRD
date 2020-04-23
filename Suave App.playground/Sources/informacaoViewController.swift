import UIKit
import PlaygroundSupport

public var novoArray:[String] = []

public class InformacaoViewController : UITableViewController {
    
    
    override public func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        self.tableView.register(CustomCell.self, forCellReuseIdentifier: "Celll")
        
    }
    
    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesArray.count-1
    }
    
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "Celll") as! CustomCell
        cell.vouTentar = indexPath.row
        return cell
        
        
    }
    
    override public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        
    }
}
