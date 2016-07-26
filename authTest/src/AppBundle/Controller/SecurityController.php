<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use AppBundle\Entity\User;
use AppBundle\Form\UserRegisterType;

class SecurityController extends Controller
{

    /**
     * @Route("/", name="home")
     */
    public function homeAction(){
        return $this->render(
        'AppBundle:Security:login.html.twig',
        array(
            // last username entered by the user
            'last_username' => "",
            'error'         => "",
            )
        );
    }


    /**
     * @Route("/login", name="login")
     */
    public function loginAction()
    {
     $authenticationUtils = $this->get('security.authentication_utils');

    // get the login error if there is one
     $error = $authenticationUtils->getLastAuthenticationError();

    // last username entered by the user
     $lastUsername = $authenticationUtils->getLastUsername();

     return $this->render(
        'AppBundle:Security:login.html.twig',
        array(
            // last username entered by the user
            'last_username' => $lastUsername,
            'error'         => $error,
            )
        );
    }

    /**
     * @Route("/register", name="register")
     */
    public function register(Request $request){

        $user = new User();
        $form = $this->createForm(UserRegisterType::class, $user);

        $form->handleRequest($request);

        if($form->isSubmitted() && $form->isValid())
        {

            $encoder = $this->container->get('security.password_encoder');
            $pass = $encoder->encodePassword($user, $user->getPassword('password'));

            $user->setRoles(['ROLE_USER']);
            $user->setPassword($pass);

            $em = $this->getDoctrine()->getManager();
            $em->persist($user);
            $em->flush();

            $this->redirectToRoute('login');
        }

        return $this->render('AppBundle:Security:register.html.twig', [
            'form' => $form->createView()
            ]);

    }

}
