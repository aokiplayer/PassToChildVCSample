import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monthPicker: UIPickerView!

    // name: for picker view's title, number: for passing to child view controller.
    let months: [(name: String, number: Int)] = [
        ("January", 1),
        ("February", 2),
        ("March", 3),
        ("April", 4),
        ("May", 5),
        ("June", 6),
        ("July", 7),
        ("August", 8),
        ("September", 9),
        ("October", 10),
        ("November", 11),
        ("December", 12),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        monthPicker.dataSource = self
        monthPicker.delegate = self
    }
}

// MARK: UIPickerViewDataSource

extension ViewController: UIPickerViewDataSource {

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return months.count
    }
}

// MARK: - UIPickerViewDelegate

extension ViewController: UIPickerViewDelegate {

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {

        return months[row].name
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {

        // This time, there is only one child view controller.
        guard let secondVC = childViewControllers.first as? SecondViewController else { return }

        secondVC.selectedNumber = months[row].number
    }
}
