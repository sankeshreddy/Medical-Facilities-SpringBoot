package trg.talentsprint.starterkit.web;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
import trg.talentsprint.starterkit.model.AdPost1;
import trg.talentsprint.starterkit.model.Category;
import trg.talentsprint.starterkit.model.City;
import trg.talentsprint.starterkit.model.Doctor;
import trg.talentsprint.starterkit.model.Facility;
import trg.talentsprint.starterkit.model.FacilityFavourite;
import trg.talentsprint.starterkit.model.Locality;
import trg.talentsprint.starterkit.model.MyFavourite;
import trg.talentsprint.starterkit.model.SubCategory;
import trg.talentsprint.starterkit.model.User;
import trg.talentsprint.starterkit.service.AdPost1Service;
import trg.talentsprint.starterkit.service.AdPostService;
import trg.talentsprint.starterkit.service.CategoryService;
import trg.talentsprint.starterkit.service.CityService;
import trg.talentsprint.starterkit.service.DoctorService;
import trg.talentsprint.starterkit.service.FacilityFavouriteService;
import trg.talentsprint.starterkit.service.FacilityService;
import trg.talentsprint.starterkit.service.LocalityService;
import trg.talentsprint.starterkit.service.MyFavouriteService;
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
	private AdPost1Service adpost1service;

	@Autowired
	private MyFavouriteService myFavService;

	@Autowired
	private FacilityFavouriteService facFavService;

	@Autowired
	private UserService userService;

	@Autowired
	private SecurityService securityService;

	@Autowired
	private UserValidator userValidator;

	@Autowired
	private FacilityService facilityService;

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
	public String subCategory(HttpServletRequest request, ModelMap model, HttpSession session) {

		int id = Integer.parseInt(request.getParameter("city"));
		int id1 = Integer.parseInt(request.getParameter("category"));

		Category c = categoryservice.findById(id1);
		String cat = c.getCategoryname();

		List<Locality> l1 = localityservice.localitylist(id);
		model.addAttribute("localitylist", l1);

		List<SubCategory> l2 = subcategoryservice.subcategorylist(id1);
		model.addAttribute("sublist", l2);
		model.addAttribute("loclist", l1);
		session.setAttribute("cat", cat);
		return "subcategory";
	}

	@GetMapping("/list")
	public ModelAndView book(HttpServletRequest request, ModelMap model, HttpSession session) {
		ModelAndView model1 = new ModelAndView();
		int id1 = Integer.parseInt(request.getParameter("subcategory"));
		int id2 = Integer.parseInt(request.getParameter("locality"));
		String cat = (String) session.getAttribute("cat");
		Category c = categoryservice.findByCategoryName(cat);
		System.out.println(c.getCategoryid());
		if (c.getCategoryid() == 1) {
			List<Doctor> p = doctorservice.findBySubcategoryidAndLocalityid(id1, id2);
			model.addAttribute("plist", p);
			model1.setViewName("list");
		} else {
			List<Facility> f = facilityService.findBySubcategoryidAndLocalityid(id1, id2);
			model.addAttribute("plist", f);
			model1.setViewName("flist");
		}

		return model1;
	}

	@GetMapping("/fav")
	public String fav(HttpServletRequest request, ModelMap model) {

		// System.out.println("id");
		// System.out.println("priyanka");
		int id = Integer.parseInt(request.getParameter("fid"));
		System.out.println("id");
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

	@RequestMapping(value = "fav/favdelete", method = RequestMethod.GET)
	public String f1deleteUser(@RequestParam int id, Model model) {
		System.out.println(id);

		myFavService.deletePost(id);
		model.addAttribute("p", myFavService.findList());
		return "myFavourite";
	}

	@RequestMapping(value = "/favdelete", method = RequestMethod.GET)
	public String f1deleteUser1(@RequestParam int id, Model model) {
		System.out.println(id);

		myFavService.deletePost(id);
		model.addAttribute("p", myFavService.findList());
		return "myFavourite";
	}

	@GetMapping("/f")
	public String f(HttpServletRequest request, ModelMap model) {

		int id = Integer.parseInt(request.getParameter("fid"));

		List<FacilityFavourite> list = facFavService.findall();
		Facility d = facilityService.findByDid(id);
		FacilityFavourite f = facFavService.findByFid(d);

		if (list.isEmpty()) {

			FacilityFavourite myFav = new FacilityFavourite();
			myFav.setFid(d);
			facFavService.save(myFav);
		} else if (f == null) {

			FacilityFavourite myFav = new FacilityFavourite();
			myFav.setFid(d);
			facFavService.save(myFav);

		} else {

			model.addAttribute("p", list);
			return "facilityfavourite";
		}
		List<FacilityFavourite> list2 = facFavService.findall();
		model.addAttribute("p", list2);

		return "facilityfavourite";
	}

	@GetMapping(value = "/subcategory", params = "postAd")

	public String save(HttpServletRequest request, ModelMap model) {
		int id = Integer.parseInt(request.getParameter("city"));
		int id1 = Integer.parseInt(request.getParameter("category"));
		List<Locality> l1 = localityservice.localitylist(id);
		List<SubCategory> l2 = subcategoryservice.subcategorylist(id1);
		if (id1 == 1) {
			model.addAttribute("sublist", l2);
			model.addAttribute("loclist", l1);
			return "postAd";
		} else {
			model.addAttribute("sublist", l2);
			model.addAttribute("loclist", l1);
			return "adpost1";
		}

	}

	@RequestMapping(value = "/fpost", method = RequestMethod.GET)
	public String savefPost(@ModelAttribute AdPost1 adpost, Model model) {
		adpost1service.save(adpost);
		List<AdPost1> list = adpost1service.findList();
		model.addAttribute("postlist", list);
		return "mypost1";

	}

	@RequestMapping(value = "/post", method = RequestMethod.GET)
	public String savePost(HttpServletRequest request, @ModelAttribute AdPost adpost, Model model) {
		String username = request.getUserPrincipal().getName();
		User user = userService.findByUsername(username);
		adpost.setUserid(user.getId());
		adpostservice.save(adpost);
		List<AdPost> list = adpostservice.findByUser(user.getId());
		model.addAttribute("postlist", list);
		return "mypost";

	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteUser(@RequestParam int id, Model model) {
		adpostservice.deletePost(id);
		model.addAttribute("postlist", adpostservice.findList());
		return "mypost";
	}

	@RequestMapping(value = "/fdelete", method = RequestMethod.GET)
	public String fdeleteUser(@RequestParam int id, Model model) {
		adpost1service.deletePost(id);
		model.addAttribute("postlist", adpost1service.findList());
		return "mypost1";
	}

	@RequestMapping(value = "/updatepost/{id}", method = RequestMethod.GET)
	public ModelAndView editTest(@PathVariable int id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		// int id = Integer.parseInt("localityid");
		// int id=Integer.parseInt("subcategoryid");
		AdPost adpost = adpostservice.updateMyPost(id);
		request.setAttribute("postlist", adpost);
		model.addObject("PostForm", adpost);
		model.setViewName("updatepost");
		// model.setViewName("redirect:mypost");
		System.out.println("updatemethod 1");
		return model;
	}

	@PostMapping("/updatepost/savep")
	public String updateposts(@ModelAttribute AdPost adpost, Model model, BindingResult bindingResult,
			HttpServletRequest request) {
		System.out.println("In save test method ");
		String username = request.getUserPrincipal().getName();
		User user = userService.findByUsername(username);
		adpost.setUserid(user.getId());
		adpostservice.save(adpost);
		List<AdPost> list = adpostservice.findByUser(user.getId());
		model.addAttribute("postlist", list);

		return "mypost";
	}
	
	@RequestMapping(value = "/updatepost/delete", method = RequestMethod.GET)
	public String deletepost(@RequestParam int id, Model model) {
		adpostservice.deletePost(id);
		model.addAttribute("postlist", adpostservice.findList());
		return "mypost";
	}

	@GetMapping("/mypostlist")
	public String list(Model model, HttpServletRequest request) {
		String username = request.getUserPrincipal().getName();
		User user = userService.findByUsername(username);

		List<AdPost> list = adpostservice.findByUser(user.getId());
		model.addAttribute("postlist", list);
		return "mypost";
	}

	@GetMapping("/myfavouritelist")
	public String myFavList(Model model, HttpServletRequest request) {
		String username = request.getUserPrincipal().getName();
		User user = userService.findByUsername(username);

		List<MyFavourite> list = myFavService.findall();
		model.addAttribute("p", list);
		return "myFavourite";

	}

	@GetMapping("/myfavouritelist1")
	public String myFavList1(Model model, HttpServletRequest request) {
		String username = request.getUserPrincipal().getName();
		User user = userService.findByUsername(username);

		List<FacilityFavourite> list = facFavService.findall();
		model.addAttribute("p", list);
		return "facilityfavourite";

	}

	@RequestMapping(value = "/fupdatepost/{id}", method = RequestMethod.GET)
	public ModelAndView feditTest(@PathVariable int id, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		// int id = Integer.parseInt("localityid");
		// int id=Integer.parseInt("subcategoryid");
		AdPost1 adpost = adpost1service.updateMyPost(id);
		request.setAttribute("postlist", adpost);
		model.addObject("PostForm", adpost);
		model.setViewName("fupdatepost");
		// model.setViewName("redirect:mypost");
		System.out.println("updatemethod 1");
		return model;
	}

	@PostMapping("/fupdatepost/savep")
	public String fupdateposts(@ModelAttribute AdPost1 adpost, Model model, BindingResult bindingResult,
			HttpServletRequest request) {
		System.out.println("In save test method ");
		adpost1service.save(adpost);
		List<AdPost1> list = adpost1service.findList();
		model.addAttribute("postlist", list);

		return "mypost1";
	}

	@RequestMapping(value = "/fupdatepost/fdelete", method = RequestMethod.GET)
	public String fdeletepost(@RequestParam int id, Model model) {
		adpost1service.deletePost(id);
		model.addAttribute("postlist", adpost1service.findList());
		return "mypost1";
	}

	@GetMapping("/mypost1list")
	public String flist(Model model) {
		List<AdPost1> list = adpost1service.findList();
		model.addAttribute("postlist", list);
		return "mypost1";
	}

	@RequestMapping("/register")
	public String registration(HttpServletRequest request) {
		request.setAttribute("mode", "MODE_HOME");
		return "welcome";
	}
}
