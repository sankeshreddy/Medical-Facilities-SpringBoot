package trg.talentsprint.starterkit.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import trg.talentsprint.starterkit.model.AdPost;
import trg.talentsprint.starterkit.model.Category;
import trg.talentsprint.starterkit.model.City;
import trg.talentsprint.starterkit.model.Doctor;
import trg.talentsprint.starterkit.model.Locality;
import trg.talentsprint.starterkit.model.MyFavourite;
import trg.talentsprint.starterkit.model.SubCategory;
import trg.talentsprint.starterkit.model.User;
import trg.talentsprint.starterkit.service.AdPostService;
import trg.talentsprint.starterkit.service.CategoryService;
import trg.talentsprint.starterkit.service.CityService;
import trg.talentsprint.starterkit.service.LocalityService;
import trg.talentsprint.starterkit.service.MyFavouriteService;
import trg.talentsprint.starterkit.service.DoctorService;
import trg.talentsprint.starterkit.service.SecurityService;
import trg.talentsprint.starterkit.service.SubcategoryService;
import trg.talentsprint.starterkit.service.UserService;
import trg.talentsprint.starterkit.validator.UserValidator;

@Controller
public class UserController {

	@Autowired
	CategoryService categoryservice;

	@Autowired
	CityService cityservice;

	@Autowired
	LocalityService localityservice;

	@Autowired
	SubcategoryService subcategoryservice;

	@Autowired
	DoctorService doctorservice;

	@Autowired
	private AdPostService adpostservice;

	@Autowired
	private MyFavouriteService myFavService;

	
	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;

	@GetMapping("/registration")
	public String registration(Model model) {
		model.addAttribute("userForm", new User());

		return "registration";
	}

	@PostMapping("/registration")
	public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
		userValidator.validate(userForm, bindingResult);

		if (bindingResult.hasErrors()) {
			return "registration";
		}

		userService.save(userForm);

		securityService.autoLogin(userForm.getUsername(), userForm.getPasswordConfirm());

		return "redirect:/welcome";
	}

	@GetMapping("/login")
	public String login(Model model, String error, String logout) {
		if (error != null)
			model.addAttribute("error", "Your username and password is invalid.");

		if (logout != null)
			model.addAttribute("message", "You have been logged out successfully.");

		return "login";
	}

	@GetMapping({ "/", "/welcome" })
	public String welcome(Model model) {
		List<Category> categorylist = categoryservice.categoryType();
		List<City> citylist = cityservice.showAllCity();

		model.addAttribute("list", categorylist);
		model.addAttribute("clist", citylist);

		return "welcome";
	}

	@GetMapping(value = "/subcategory", params = "search")
	public String subCategory(HttpServletRequest request, ModelMap model) {

		int id = Integer.parseInt(request.getParameter("city"));
		int id1 = Integer.parseInt(request.getParameter("category"));

		List<Locality> l1 = localityservice.localitylist(id);
		model.addAttribute("localitylist", l1);

		List<SubCategory> l2 = subcategoryservice.subcategorylist(id1);
		model.addAttribute("sublist", l2);
		model.addAttribute("loclist", l1);
		return "subcategory";
	}

	@GetMapping("/list")
	public String book(HttpServletRequest request, ModelMap model) {
		int id1 = Integer.parseInt(request.getParameter("subcategory"));
		int id2 = Integer.parseInt(request.getParameter("locality"));

		List<Doctor> p = doctorservice.findBySubcategoryidAndLocalityid(id1, id2);

		model.addAttribute("plist", p);

		return "list";
	}

	@GetMapping("/fav/{id}")
	public String fav(@PathVariable int id, HttpServletRequest request, ModelMap model) {

		// System.out.println("id");
		// System.out.println("priyanka");
		List<MyFavourite> list = myFavService.findall();
		Doctor d = doctorservice.findByDid(id);
		MyFavourite f = myFavService.findByDid(d);

		if (list.isEmpty()) {

			MyFavourite myFav = new MyFavourite();
			myFav.setDid(d);
			myFavService.save(myFav);
		} else if (f == null) {

			MyFavourite myFav = new MyFavourite();
			myFav.setDid(d);
			myFavService.save(myFav);

		} else {

			model.addAttribute("p", list);
			return "myFavourite";
		}
		List<MyFavourite> list2 = myFavService.findall();
		model.addAttribute("p", list2);

		return "myFavourite";
	}

	@GetMapping(value = "/subcategory", params = "postAd")

	public String save(HttpServletRequest request, ModelMap model) {
		int id = Integer.parseInt(request.getParameter("city"));
		int id1 = Integer.parseInt(request.getParameter("category"));

		List<Locality> l1 = localityservice.localitylist(id);
		model.addAttribute("localitylist", l1);

		List<SubCategory> l2 = subcategoryservice.subcategorylist(id1);
		model.addAttribute("sublist", l2);
		model.addAttribute("loclist", l1);
		return "postAd";

	}

	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String savePost(@ModelAttribute AdPost adpost, Model model) {
		adpostservice.save(adpost);
		List<AdPost> list = adpostservice.findList();
		model.addAttribute("postlist", list);
		return "mypost";

	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteUser(@RequestParam int id, Model model) {
		adpostservice.deletePost(id);
		model.addAttribute("postlist", adpostservice.findList());
		return "mypost";
	}

	@RequestMapping(value = "/updatepost/delete", method = RequestMethod.GET)
	public String deletepost(@RequestParam int id, Model model) {
		adpostservice.deletePost(id);
		model.addAttribute("postlist", adpostservice.findList());
		return "mypost";
	}

	@RequestMapping(value = "/updatepost/{id}", method = RequestMethod.GET)
	public ModelAndView editTest(@PathVariable int id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();

		AdPost adpost = adpostservice.updateMyPost(id);
		request.setAttribute("postlist", adpost);
		model.addObject("PostForm", adpost);
		model.setViewName("updatepost");

		return model;
	}

	@PostMapping("/updatepost/savep")
	public String updateposts(@ModelAttribute AdPost adpost, Model model, BindingResult bindingResult,
			HttpServletRequest request) {
		System.out.println("In save test method ");
		adpostservice.save(adpost);
		List<AdPost> list = adpostservice.findList();
		model.addAttribute("postlist", list);

		return "mypost";
	}

	@GetMapping("/mypostlist")
	public String list(Model model) {
		List<AdPost> list = adpostservice.findList();
		model.addAttribute("postlist", list);
		return "mypost";
	}

}
