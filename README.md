This is to help me understanding how all of this works.

# TODO

[ ] Front pagef
   [ ] Contact info
   [ ] Newest paper?
   [ ] Short bio
[ ] CV page
[ ] Mobile responsiveness
[ ] LaTeX (KaTeX) support 
[ ] About me
    [ ] Other interests
    [ ] Gato
[ ] Translation to portuguese

# Explanation of each folder
Alongside analogies with LaTeX. From Gemini 3 Pro

* **`content/` (CRITICAL):** This is where you write.
* *Analogy:* Your `.tex` files.
* *Usage:* You put `research.md`, `cv.md`, and blog posts here.


* **`layouts/` (CRITICAL):** This is where you design.
* *Analogy:* Your `.cls` (class) or `.sty` files.
* *Usage:* Contains the HTML structures (templates) that wrap around your content.


* **`static/` (IMPORTANT):** Files here are copied **as-is** to the final website.
* *Analogy:* The folder where you keep figures (`fig1.pdf`) for a paper.
* *Usage:* Put your `cv.pdf`, `profile.jpg`, and `favicon.ico` here. If you put `image.png` here, it appears at `yoursite.com/image.png`.


* **`data/` (IMPORTANT for you):** Structured data files.
* *Usage:* This is where your **`cv.yaml`** will go. Hugo can read files here and make them available as variables (e.g., `.Site.Data.cv`).


* **`assets/` (Advanced):** Like `static`, but for files that need processing (pipes).
* *Usage:* Only needed if you use SASS/SCSS or want Hugo to resize images automatically.


* **`themes/`:**
* *Usage:* If you downloaded a pre-made skin (like "Academic Theme"), it would live here. Since you are building from scratch, this will stay empty.


* **`i18n/`:**
* *Usage:* Contains translation dictionaries (e.g., `en.yaml`, `pt.yaml`) for multi-language support.


* **`archetypes/`:**
* *Usage:* Templates for *new* content. When you run `hugo new post/my-paper.md`, Hugo looks here to see what default Frontmatter (date, title, tags) to add to the top of the file.
