// We want to build a simple PDF with just large underlined page numbers,
// one number centered per page.
// The idea is to help us visualize imposition.

// Define program parameters
#set page(width: 4.25in,   // 1/4 US Letter size
          height: 5.5in
)
#set text(gray)  // If we print it let's not waste toner
#let NumPages=48 // Because The Ruum is also 40 pages
#let FontSize=200pt

// Main loop
#for pagenumber in range(1,NumPages+1){
  align(center+horizon)[
    #block()[
      #underline[
        #text(size: FontSize)[#pagenumber]
      ]
    ]
  ]
  if pagenumber < NumPages {  // We don't want a 41st blank page
    pagebreak()
  }
}
