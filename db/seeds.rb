require "open-uri"

puts "cleaning database"
puts "destroy all recipes"

Recipe.destroy_all
User.destroy_all
puts "creating recipes..."

aisha = User.create(
  email: "blabla@gmail.com",
  password: "123456"
)

recipe1 = Recipe.create!(
  user: aisha,
  name: "Carrot and lentil soup",
  description: "Bursting with bold flavours and bright colours, this carrot and lentil soup is packed full of protein to keep you full for longer, as well as iron, fibre, calcium and vitamins.",
  instruction: "1. Heat the oil in a saucepan over a medium heat, then add the onion, celery, carrot, garlic, ginger and salt. Fry for 15 minutes, stirring often, until the vegetables are glossy and translucent.
  2. Stir in the coriander, turmeric, caraway and cardamom and cook for 1 minute. Add the lentils and 1.5 litres/2¾ pints water.
  3. Slowly bring the soup to a gentle simmer and cook for 10 minutes, or until the lentils have softened.
  Stir in the spinach and cook until it wilts, then add a few grinds of black pepper. Season with more salt and pepper if desired.
  4. Serve in bowls with a spoonful of yoghurt, a sprinkle of lime zest and a squeeze of lime juice.",
  prep_time: "10-30",
  diet_tag: "vegan",
  servings: "4",
  ingredients: "2 tbsp olive oil
  2 red onions, diced
  2 celery sticks, diced
  2 large carrots, peeled and diced
  2 garlic cloves, finely chopped
  30g/1oz fresh root ginger, peeled and finely chopped
  1 tsp sea salt
  15g/½oz fresh coriander (leaves and stalks), washed and finely chopped
  1 tsp ground turmeric
  1 tsp caraway seeds
  1 tsp ground cardamom seeds
  200g/7oz red lentils
  225g/8oz baby spinach, washed
  salt and freshly ground black pepper"
)

file = URI.open("https://img.taste.com.au/OkqqPCk0/taste/2016/11/quick-carrot-and-lentil-soup-108130-1.jpeg")
recipe1.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe1.save

user2 = User.create(
  email: "user2@gmail.com",
  password: "123456"
)

recipe2 = Recipe.create!(
  name: "Vegetable noodle pancake",
  description: "A complete meal in a frying pan, this easy vegetable and noodle pancake is great for lunch, brunch or dinner.
  ",
  user: user2,
  instruction: "Heat the extra virgin olive oil and the garlic gently in a medium saucepan over a medium heat until the garlic is soft and just starting to brown. Drain the chickpeas and stir in along with a generous amount of salt and pepper.
  Stir in the chopped tomatoes, chicken stock and pasta shapes. Bring to the boil, then reduce the heat until the soup is just simmering.
  Cook the soup for 15 minutes, or until the pasta is tender.
  Check the seasoning, and serve finished with a generous drizzle of olive oil.",
  prep_time: "10-30",
  diet_tag: "vegan",
  servings: "5",
  ingredients: "100g/3½oz plain flour
  ½ tsp salt
  2 free-range eggs
  300g/10½oz straight-to-wok noodles
  200g/7oz white or sweetheart cabbage, finely shredded
  1 carrot, coarsely grated
  bunch spring onions, very thinly sliced
  2 tbsp vegetable oil
  chilli sauce or fruity brown sauce, to serve (optional)"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/vegetable_noodle_pancake_22079_16x9.jpg")
recipe2.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe2.save

user3 = User.create(
  email: "user3@gmail.com",
  password: "123456"
)

recipe3 = Recipe.create!(
  user: user3,
  name: "Tomato, chickpea and pasta soup",
  description: "This cheap, quick and easy soup is based on an Italian classic: Pasta e ceci. If you’ve got any fresh herbs to hand, sprinkle a small handful over each bowl of soup before serving. Flatleaf parsley, basil and sage would all work well.",
  instruction: "1. Heat the extra virgin olive oil and the garlic gently in a medium saucepan over a medium heat until the garlic is soft and just starting to brown. Drain the chickpeas and stir in along with a generous amount of salt and pepper.
  2. Stir in the chopped tomatoes, chicken stock and pasta shapes. Bring to the boil, then reduce the heat until the soup is just simmering.
  3. Cook the soup for 15 minutes, or until the pasta is tender.
  4. Check the seasoning, and serve finished with a generous drizzle of olive oil.",
  prep_time: "20",
  servings: "3",
  ingredients: "1 tbsp extra virgin olive oil, plus extra for drizzling
2 large garlic cloves, thinly sliced
400g tin chickpeas
400g tin chopped tomatoes
400ml/14fl oz vegetable stock
50g/1¾oz small pasta shapes
freshly ground sea salt and black pepper"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/moroccan-style_soup_33454_16x9.jpg")
recipe3.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe3.save

user4 = User.create(
  email: "user4@gmail.com",
  password: "123456"
)

recipe4 = Recipe.create!(
  user: user4,
  name: "Persian noodle soup",
  description: "Herbs, pulses, noodles, spinach and soured cream combine in this Iranian comfort food dish, topped with deeply caramelised onions.",
  instruction: "1. Heat the olive oil in a large pan over a medium heat, and fry the onions for 5 minutes, or until soft and pale golden in colour. Add the turmeric and garlic and cook for a further 4 minutes.
  2. Add the chickpeas, lentils and haricot beans to the onions and pour in the stock. Simmer for 30 minutes, stirring occasionally.
  3. Melt the butter in a non-stick frying pan over a low heat. Fry the sliced onions for 20 minutes, stirring occasionally, until they are deeply caramelised.
  When the beans have simmered for 30 minutes, add the noodles to the pot and cook for a further 10 minutes.",
  prep_time: "20",
  diet_tag: "vegan",
  servings: "3",
  ingredients: "3 tbsp olive oil
  4 onions, 2 roughly chopped, 2 thinly sliced
  2 tsp ground turmeric
  3 garlic cloves, finely chopped
  400g tin chickpeas, drained
  100g/3½oz small brown lentils
  400g haricot beans, drained
  1 litre/1¾ pint vegetable stock
  40g/1½oz butter
  100g/3½oz linguine or Iranian reshtey noodles
  200g/7oz spinach
  30g/1oz fresh parsley
  20g/¾oz fresh coriander
  15g/½oz fresh mint
  2 x 250ml/9fl oz tubs soured cream"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/persian_noodle_soup_76589_16x9.jpg")
recipe4.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe4.save

user5 = User.create(
  email: "user5@gmail.com",
  password: "123456"
)
recipe5 = Recipe.create!(
  user: user5,
  name: "Pizza expressed three ways",
  description: "You can either make the dough from scratch for this pizza, which takes no time at all, or for an even speedier method, buy soft tortillas and use these as a base for the pizza instead of making your own.",
  instruction: "1.Preheat the oven to 240C/475F/Gas 9.
  Put the flour, yeast and salt into a large bowl and stir to combine. Make a well in the centre and add the oil and 175ml/6fl oz of warm (but not too hot) tap water. 2.Then mix it all together with a wooden spoon to form a soft slightly sticky ball.
  3. At this stage I like to get my hands into the bowl and squidge everything together. Then throw a little flour on the work surface and knead the dough for eight minutes by hand (or four minutes in a free standing mixer fitted with a dough hook).
  4. Then divide the dough into three equal(ish) pieces and then use a rolling pin to roll each one out into roughly a 14x40cm/5x15in rectangle. It will be really nice and thin. Put each rectangle on a baking sheet and cover with a clean tea towel or some oiled cling film so they not dry out while you prepare the toppings (or for at least 10 minutes).
  5. For the harissa, chilli, sausage and rocket topping, trim and finely slice the spring onions (green and white bit) and halve, deseed and finely slice the red chilli (if using) and set aside.
  Snip the skin of the sausages and then peel it off or squeeze the sausage meat out. Break the sausage meat into small pieces.
  6. Spread the harissa paste all over the pizza base. I like to leave a 1cm/½in border for aesthetic purposes only! Scatter the onions, chilli, sausage meat and fennel seeds over and season with a little salt and pepper.
  For the goats’ cheese, sweet pepper and chorizo topping, put the passata and peppadew peppers in a blender. Run your fingers down the length of the thyme sprigs to release their leaves, peel the garlic and add both to the blender also. Blitz until smooth and then spread over the pizza base, leaving a 1cm/½in border.
  Break the goats’ cheese into small pieces and scatter over the pizza base along with the chorizo slices.
  For the feta, hummus and zucchini topping, spread the hummus over the base of the pizza and crumble the feta on top. 7. Use a vegetable peeler to slice the courgette into long thin strips. Keep going until all is used up and arrange these over also. Halve the tomatoes, scatter them over, and season.
  When you have topped the pizzas, bake each one in the oven for 8-10 minutes or until crispy and the sausage on the harissa, chilli and sausage pizza is cooked.
  8. Once cooked, scatter the rocket over the harissa, chilli and sausage pizza. Scatter the basil leaves over the cooked goats’ cheese pizza and drizzle with a little oil. Drizzle the balsamic glaze over the feta pizza with a good drizzle of olive oil, then scatter over the mint leaves. Serve the pizzas immediately.",
  prep_time: "35",
  diet_tag: "vegan",
  servings: "4",
  ingredients: "For the pizza dough
  300g/11oz strong bread flour, plus a little extra for dusting
  1 x 7g sachet fast-action dried yeast
  1½ tsp salt
  3 tbsp extra virgin olive oil
  For the harissa, chilli, sausage and rocket topping
  2 spring onions
  1 red chilli (optional)
  2 fat sausages
  2 tsp fennel seed
  2 tbsp harissa paste (found in most supermarkets)
  a handful of wild rocket
  extra virgin olive oil
  salt and pepper"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/pizza_expressed_three_77124_16x9.jpg")
recipe5.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe5.save

user6 = User.create(
  email: "user6@gmail.com",
  password: "123456"
)
recipe6 = Recipe.create!(
  user: user6,
  name: "Creamy pasta with broccoli and sweetcorn",
  description: "The perfect midweek creamy pasta dish, from pan to plate in 15 minutes. You can use any pasta shapes you like. The lemon zest adds a little ‘zing’ but you can leave it out if you prefer.",
  instruction: "1. Half-fill a large saucepan with water, cover with a lid and bring to the boil. Stir in the pasta and return to the boil. Cover loosely with the lid, reduce the heat and simmer for 10–12 minutes, or until the pasta is tender but retains just a little ‘bite’. Stir occasionally as the pasta cooks, so it doesn’t stick.
  2. Meanwhile, cut the broccoli florets in half or quarters depending on size. After the pasta has been cooking for 8–10 minutes, add the broccoli and sweetcorn to the saucepan, cover and return to the boil. Cook for 2–3 minutes more, or until the broccoli is tender and the pasta cooked. Reserve a couple of ladles of the water (around 150ml/¼ pint) and put to one side in a bowl. Drain the pasta and vegetables in a colander then return to the pan.
  3. Pour the reserved water over the pasta, add the soft cheese and lemon zest and stir well until the cheese melts and coats the pasta. Sprinkle with half the cheddar and season with freshly ground black pepper. Toss together over a low heat until the cheddar melts into the sauce, adding a splash of water if needed. Sprinkle with the remaining cheese to serve.",
  prep_time: "35",
  diet_tag: "vegan",
  servings: "4",
  ingredients: "300g/10½oz dried penne pasta, or other pasta shapes
  1 head of broccoli (about 350g/12oz), cut into small florets
  200g/7oz frozen sweetcorn
  200g tub full-fat cream cheese (also known as soft cheese)
  ½ lemon, finely grated zest only
  100g/7oz cheddar, grated
  ground black pepper"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/cheesy_turkey_and_01433_16x9.jpg")
recipe6.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe6.save

user7 = User.create(
  email: "user7@gmail.com",
  password: "123456"
)
recipe7 = Recipe.create!(
  user: user7,
  name: "Chicken pesto pasta",
  description: "Chicken pesto pasta isn’t a traditional Italian dish, but pesto Genovese is often served with meat and fish. Rachel Roddy’s comforting, vibrant pasta dish combines all three.",
  instruction: "1. Preheat the oven to 220C/200C Fan/Gas 7.
  Drizzle the chicken breasts with olive oil, season and wrap in kitchen foil. Bake in the oven for around 15–16 minutes until cooked through. (Note that if the chicken breast is larger than specified, it may take longer to cook. 2. A 150–200g/5½–7oz skinless chicken breast fillet will need 16–18 minutes; a 200–250g/7–9oz one 18–20 minutes; and a 250–300g/9–10½ one 20–22 minutes. If cooking more than four breasts at a time, increase the cooking time by 5 minutes, and don’t forget to check that each breast is cooked through.) Alternatively you can poach the chicken – place the chicken in a pan along with the peeled onion and carrot and cover with 2.5cm/1in cold water. Bring to a simmer, add a good pinch of salt and poach for 10–15 minutes, with a lid on, until the chicken is completely cooked.
  3. While the chicken is cooking, make the pesto. If you are using a pestle and mortar, start by pounding the garlic and salt to a rough paste, then add the pine nuts, then basil, then oil, and pound to a consistency you like. Stir in the cheese to finish. If you are working in a food processor you can blend the garlic, salt, pine nuts, basil and oil all together, and once you have a consistency you like, stir in the cheese.
  Once the chicken is cooked, let it rest until cool enough to handle, then shred into a large mixing bowl and toss gently with the pesto.
  4. Bring a large pan of salted water to the boil, and boil the pasta until al dente. Drain the pasta, saving a cup of pasta cooking water. Combine the pasta with the chicken and pesto, and toss together, adding a bit of pasta water if it needs loosening. Serve.",
  prep_time: "35",
  diet_tag: "vegan",
  servings: "4",
  ingredients: "2 chicken breasts, approx. 120g/4½oz each
6–8 tbsp olive oil, plus extra for drizzling
1 onion, peeled and cut in half (optional)
1 carrot (optional)
1 garlic clove
1 tbsp pine nuts
45 basil leaves
20g/¾oz pecorino, grated
20g/¾oz Parmesan, grated
450g/1lb dried pasta
salt, to season"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/pesto_pasta_salad_72323_16x9.jpg")
recipe7.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe7.save

user8 = User.create(
  email: "user8@gmail.com",
  password: "123456")
recipe8 = Recipe.create!(
  user: user8,
  name: "Salmon pasta bake",
  description: "Anna Del Conte's quick and easy salmon pasta bake is deliciously cheesy and you can use any shape of pasta you have to hand.",
  instruction: "1. Preheat the oven to 200C/180C Fan/Gas 6. Grease a gratin dish with a little butter. In a small saucepan, slowly bring the milk to a simmer.
  2. Meanwhile, to make the béchamel sauce, melt half the butter over a very low heat in a heavy-bottomed saucepan. Stir in the flour with a wooden spoon. Cook, stirring constantly, until just golden but not brown.
  3. Remove from the heat and add the hot milk, a few tablespoonfuls at a time, until it is incorporated and the sauce is smooth. Season with salt and pepper and the nutmeg. Return the saucepan to the heat and slowly bring the sauce to the boil, stirring all the time.
  4. Cook the pasta in a saucepan of boiling salted water according to the packet instructions. Cut the remaining butter into small pieces. Drain the pasta and mix in half the pieces of butter.
  5. Spoon 2–3 tablespoons of the béchamel into the prepared dish, cover with a third of the pasta, then half the salmon and half the Gruyère. Sprinkle with some of the Parmesan and breadcrumbs. Spread over some béchamel, then cover with half the remaining pasta and all the remaining salmon and Gruyère. Add the remaining pasta, finishing with a covering of béchamel. Sprinkle with the rest of the Parmesan and breadcrumbs and dot with the remaining pieces of butter.",
  prep_time: "35",
  diet_tag: "vegan",
  servings: "4",
  ingredients: "750ml/1¼ pint full-fat milk
  120g/4½oz unsalted butter, plus extra for greasing
  50g/1¾oz plain flour
  freshly grated nutmeg
  300g/10½oz dried pasta, such as farfalle
  250g/9oz smoked salmon, cut into strips
  250g/9oz Gruyère, grated
  75g/2½oz Parmesan, grated
  3 tbsp dried breadcrumbs
  salt and freshly ground black pepper"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/littleitalypastabake_14520_16x9.jpg")
recipe8.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe8.save

user9 = User.create(
  email: "user9@gmail.com",
  password: "123456")
recipe9 = Recipe.create!(
  user: user9,
  name: "Sweet potato soup",
  description: "Sweet potato soup is a big bowl of comfort. It's vegan, has cheap ingredients, is quick and easy to make. It can also be frozen for future lunches and dinners. Perfection!
  ",
  instruction: "1. Heat the oil in a large, lidded saucepan over a medium-high heat. Add the onion and carrots and cook until softened. Stir in the ginger, garlic and chilli flakes and fry for 2–3 minutes, or until fragrant.
  2. Stir in the sweet potatoes and stock. Turn up the heat and bring the pan to the boil. Reduce the heat to low and simmer with the lid on for 15 minutes, or until the sweet potato is tender.
  3. Remove the pan from the heat and blend the soup, using a stick blender, until smooth. Alternatively, tip it into a food processor and blend. Season to taste and serve.",
  prep_time: "35",
  diet_tag: "vegan",
  servings: "4",
  ingredients: "1 tbsp olive oil
  1 onion, roughly chopped
  2 large carrots, peeled and roughly chopped
  4cm/1½ inches fresh root ginger, finely chopped
  1 garlic clove, crushed
  ½ tsp dried red chilli flakes
  700g/1lb 10oz sweet potatoes, peeled and cubed
  1.2 litres/2 pints vegetable stock
  salt and freshly ground black pepper"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/sweet_potato_soup_78003_16x9.jpg")
recipe9.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe9.save

user10 = User.create(
  email: "user10@gmail.com",
  password: "123456")

recipe10 = Recipe.create!(
  user: user10,
  name: "Minestrone soup",
  description: "This budget minestrone is the classic Italian soup made with cannellini beans and broken up spaghetti. Feel free to stir in extra vegetables, depending on what you have in the fridge. This is designed to be a low cost recipe.",
  instruction: "1. Heat the olive oil in a large lidded saucepan over a medium heat. Add the onion, carrots and celery, season with a little salt and pepper and cook for about 10 minutes, stirring occasionally until the vegetables have softened.
  2. Add the garlic and fry for another minute. Stir in the tomato purée and cook for a further 3 minutes.
  3. Tip in the tomatoes and stock. Cover with a lid and bring slowly to the boil. Reduce the heat to a simmer and cook for 15 minutes.
  4. Add the beans and pasta and cook for a further 10 minutes, or until the pasta is cooked. Add the cabbage and cook for another 2 minutes. If the soup is too thick, add some hot water to reach your preferred consistency.
  5. Season to taste with salt and pepper before serving.",
  prep_time: "35",
  diet_tag: "vegan",
  servings: "4",
  ingredients: "1 tbsp olive oil
  1 onion, chopped
  2 carrots, peeled and chopped
  3 large celery sticks, chopped
  2 garlic cloves, finely chopped
  2 tbsp tomato purée
  400g tin chopped tomatoes
  1.2 litres/2 pints vegetable or chicken stock, made from stock cubes
  400g tin cannellini beans, drained and rinsed
  100g/3½ dried spaghetti, broken into short lengths
  ¼ head green cabbage, finely shredded
  salt and freshly ground black pepper"
)
file = URI.open("https://ichef.bbci.co.uk/food/ic/food_16x9_1600/recipes/minestrone_23211_16x9.jpg")
recipe10.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe10.save
recipe11 = Recipe.create!(
  user: User11,
  name: "Vegan cabbage cacciatore",
  description: "Viva Italia! That unmistakable trio of tomato, basil and mozzarella meets olives, peppers, pesto and chicken-infused rice for a bolstering midweek dinner.",
  diet_tag: "gluten free",
  servings: "3 people",
  instruction:"1.Remove any damaged outer leaves from the cabbage, wash to remove any dirt and slice into 4 wedges. Put a large lidded saucepan over a high heat and, once smoking, add a drizzle of vegetable oil and the cabbage wedges, cut-side down. Cook for a few minutes until nicely charred, then flip to char the other cut side for another few minutes. Remove and set aside.
  2.Add another drizzle of oil to the pan, turn down the heat to medium, then add the onions, celery, red pepper and garlic and cook for 6 minutes until soft. Stir in the tomato purée and cook for 2 minutes.
  3. Nestle the cabbage wedges back into the pan then pour in the wine. Simmer until reduced by half (about 4 minutes) then add 200g water, the tinned tomatoes, mushrooms, rosemary, oregano, olives and capers and season with salt and pepper. Cover and simmer for 20 minutes, until the sauce has thickened slightly and you can insert a knife into the thick stem of a cabbage wedge with little resistance. Serve scattered with chopped parsley or basil.",
  ingredients: "1 medium savoy cabbage
  Olive oil to fry
  1 onion, sliced
  1 celery stick, sliced
  1 red pepper, deseeded and chopped into 2cm pieces
  4 garlic cloves, sliced
  2 tbsp tomato purée
  150ml red wine
  400g tin chopped tomatoes
  150g button mushrooms
  1 sprig of rosemary
  1 tsp dried oregano
  50g black olives
  1 tbsp capers
  Handful parsley or basil, chopped"

)
file = URI.open("https://www.deliciousmagazine.co.uk/wp-content/uploads/2022/11/2022D467-Cabbage-Cacciatore-768x960.jpg")
recipe11.photo.attach(io: file, filename: "bolognese.png", content_type: "image/png")
recipe11.save

# # require 'open-uri'
# # require 'nokogiri'

# # url = 'https://dribbble.com/search/shots/popular/web-design?q=recipies'
# # html_content = URI.open(url).read
# # doc = Nokogiri::HTML(html_content)

# # doc.css('.recipe').each do |recipe|
# #   title = recipe.css('.title').text
# #   content = recipe.css('.content').text
# #   photo = recipe.css('.photo').text

# #   Recipe.create(title: title, content: content, photo: photo)
# # end
