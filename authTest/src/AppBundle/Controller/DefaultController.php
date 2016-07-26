<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\JsonResponse;

class DefaultController extends Controller
{
    /**
     * @Route("/", name="homepage")
     */
    public function indexAction(Request $request)
    {
        return $this->render('AppBundle::Home/index.html.twig', []);
    }

    /**
     * @Route("/fruit", name="fruit")
     */
    public function fruitAction(){

        $em = $this->getDoctrine()->getManager();
        $names = $em->getRepository('AppBundle:Data')->findAll();


        $result = $em->createQueryBuilder();
        $app_code = $result->select('p')
            ->from('AppBundle:Data', 'p')
            ->getQuery()
            ->getResult(\Doctrine\ORM\Query::HYDRATE_ARRAY);

        $reponse = new JsonResponse(array('pages' => $app_code));
        //var_dump(json_encode(['pages' => $names], JSON_FORCE_OBJECT));
        return $reponse;

    }

    /**
     * @Route("/admin", name="admin")
     */
    public function testadminAction(){

        return new Response();

    }

}
