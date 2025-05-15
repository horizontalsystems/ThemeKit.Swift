import UIKit
import UIExtensions

extension ThemeNavigationController: IDeinitDelegate {}
extension ThemeTabBarController: IDeinitDelegate {}
extension ThemeViewController: IDeinitDelegate {}

open class ThemeNavigationController: UINavigationController {
    public var onDeinit: (() -> ())?

    override public init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
        commonInit()
    }

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }

    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        commonInit()
    }

    private func commonInit() {
        navigationBar.prefersLargeTitles = true
        navigationBar.tintColor = .themeOrange
    }

    deinit {
        onDeinit?()
    }

    override open var childForStatusBarStyle: UIViewController? {
        topViewController
    }

    override open var childForStatusBarHidden: UIViewController? {
        topViewController
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        topViewController?.preferredStatusBarStyle ?? .themeDefault
    }

    override open var prefersStatusBarHidden: Bool {
        topViewController?.prefersStatusBarHidden ?? false
    }

    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if navigationItem.searchController != nil {
            DispatchQueue.main.async {
                self.navigationBar.sizeToFit()
            }
        }
    }
}

open class ThemeTabBarController: UITabBarController {
    public var onDeinit: (() -> ())?

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    deinit {
        onDeinit?()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override open func viewDidLoad() {
        super.viewDidLoad()

        //        tabBar.shadowImage = UIImage()
        //        let separator = UIView(frame: CGRect(x: 0, y: 0, width: 10000, height: 1 / UIScreen.main.scale))
        //        separator.backgroundColor = .themeSteel20
        //        tabBar.addSubview(separator)

        tabBar.barTintColor = .themeBlade
        tabBar.tintColor = .themeOrange

        updateUITheme()
    }

    override open func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        tabBar.superview?.setNeedsLayout()
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        .themeDefault
    }

    public override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        updateUITheme()
    }

    private func updateUITheme() {
        tabBar.isTranslucent = true
        tabBar.backgroundImage = UIImage(color: .themeTabBarBackground)
        tabBar.backgroundColor = .themeTabBarBackground
    }

}

open class ThemeViewController: UIViewController {
    public var onDeinit: (() -> ())?

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    deinit {
        onDeinit?()
    }

    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    open override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .themeTyler
    }

    override open var preferredStatusBarStyle: UIStatusBarStyle {
        .themeDefault
    }

}
