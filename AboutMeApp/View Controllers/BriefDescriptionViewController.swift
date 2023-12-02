
import UIKit

final class BriefDescriptionViewController: UIViewController {
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var cityOfResidenceLabel: UILabel!
    @IBOutlet var busynessLabel: UILabel!
    
    var name: String!
    var surName: String!
    var cityOfResidence: String!
    var busyness: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name
        surnameLabel.text = surName
        cityOfResidenceLabel.text = cityOfResidence
        busynessLabel.text = busyness
    }
}
