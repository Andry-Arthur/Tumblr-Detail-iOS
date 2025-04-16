import UIKit
import Nuke

class DetailViewController: UIViewController {
    
    var post: Post?
    
    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postSummaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let post = post else {
            print("🚨 post was nil in DetailViewController!")
            return
        }
        
        // Stylish background for the view
        view.backgroundColor = UIColor.systemGray6  // Soft gray background
        
        // Set the summary text with improved styling using NSAttributedString
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4   // Adjust line spacing
        paragraphStyle.paragraphSpacing = 10 // Adjust space between paragraphs
        paragraphStyle.firstLineHeadIndent = 20  // Left padding for the first line

        let attributes: [NSAttributedString.Key: Any] = [
            .paragraphStyle: paragraphStyle,
            .foregroundColor: UIColor.darkGray, // Set text color
            .font: UIFont.preferredFont(forTextStyle: .body)
        ]

        let attributedText = NSAttributedString(string: post.summary, attributes: attributes)
        postSummaryLabel.attributedText = attributedText
        postSummaryLabel.numberOfLines = 0  // Allow multi-line
        postSummaryLabel.textAlignment = .center  // Center the text

        // Add rounded corners and shadow to the post image view for a stylish look
        postImageView.layer.cornerRadius = 15
        postImageView.layer.masksToBounds = true
        postImageView.layer.shadowColor = UIColor.black.cgColor
        postImageView.layer.shadowOffset = CGSize(width: 0, height: 2)
        postImageView.layer.shadowOpacity = 0.2
        postImageView.layer.shadowRadius = 10
        
        // Set a default background color (light gray) for the image view
        postImageView.backgroundColor = .lightGray

        // Load the first photo with a fade-in effect (better UX than an activity indicator)
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImageView) { [weak self] response in
                if case .success = response {
                    // Fade-in the image once it's loaded
                    UIView.transition(with: self!.postImageView, duration: 0.5, options: .transitionCrossDissolve, animations: {
                        self?.postImageView.alpha = 1.0
                    })
                }
            }
        }
    }
}
