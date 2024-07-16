import SwiftUI

struct StatusBarConfigurator: UIViewControllerRepresentable {
    var color: UIColor

    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        viewController.view.backgroundColor = .clear
        DispatchQueue.main.async {
            if let statusBarFrame = UIApplication.shared.windows.first?.windowScene?.statusBarManager?.statusBarFrame {
                let statusBar = UIView(frame: statusBarFrame)
                statusBar.backgroundColor = color
                viewController.view.addSubview(statusBar)
            }
        }
        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
