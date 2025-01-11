import SwiftUI
import PDFKit


struct may24: View {
    
    var body: some View {
        
        let pdfUrl =
        Bundle.main.url(forResource:
                                "may-2024", withExtension:
                                "pdf")!
        VStack() {
            
            Text("May 2024")
            PDFKitView(url: pdfUrl)
                .scaledToFill()
           
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
            pdfView.document = PDFDocument(url: self.url)
            pdfView.autoScales = true
        
            return pdfView
        }
        
        func updateUIView(_ uiView: PDFView, context: UIViewRepresentableContext<PDFKitView>) {
            // we will leave this empty as we don't need to update the PDF
        }
    }
}


#Preview {
    may24()
        .frame(maxHeight: .infinity)
}
