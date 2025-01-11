import SwiftUI
import PDFKit


struct FeaturesPage: View {
    var body: some View {
        let pdfUrl = 
            Bundle.main.url(forResource:
                                "prom", withExtension:
                                "pdf")!
        VStack(spacing: 30) {
            Text("PDF Viewer")
                .foregroundColor(.accentColor)
            PDFKitView(url: pdfUrl)
              
            Spacer()

        }
        
        
        .padding()
        .background {
                    RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.tint)
                    .opacity(0.12)
                    .brightness(-0.2)

                }
                .foregroundStyle(.white)
    }
    
    struct PDFKitView: UIViewRepresentable {
        let url: URL // new variable to get the URL of the document
        
        func makeUIView(context: UIViewRepresentableContext<PDFKitView>) -> PDFView {
            // Creating a new PDFVIew and adding a document to it
            let pdfView = PDFView()
            pdfView.autoScales = true
            pdfView.document = PDFDocument(url: self.url)
            return pdfView
        }
        
        func updateUIView(_ uiView: PDFView, context: UIViewRepresentableContext<PDFKitView>) {
            // we will leave this empty as we don't need to update the PDF
        }
    }
}


#Preview {
    FeaturesPage()
        .frame(maxHeight: .infinity)
        .background(Gradient(colors: gradientColors))

}
