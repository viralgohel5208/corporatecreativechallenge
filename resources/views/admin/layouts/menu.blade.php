<?php /* need to remove */ ?>
<li class="nav-item">
    <a href="{{ route('dashboard') }}" class="nav-link active">
        <i class="nav-icon fas fa-home"></i>
        <p>Home</p>
    </a>
</li>


<li class="nav-item  ">
  <a href="#" class="nav-link  ">
    <i class="nav-icon fas fa-book"></i>
    <p>
      Pages
      <i class="right fas fa-angle-left"></i>
    </p>
  </a>
  <ul class="nav nav-treeview">
    <?php   
      $pages = DB::table('pages')->groupBy('page_id')->orderBy("p_ordr","ASC")->get(); 
       foreach ( $pages as $key => $value) { ?>
        <li class="nav-item">
          <a href="{{ url('corporate-admin/page/'.$value->page_id) }}" class="nav-link  ">
            <?php /* <i class="far fa-circle nav-icon"></i>  */ ?>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - {{ ucfirst(str_replace("-"," " ,$value->page_id))}}</p>
          </a>
        </li>

        <?php
      }   ?>
  </ul>
</li>
<?php /*<li class="nav-item  ">
  <a href="#" class="nav-link  ">
    <i class="nav-icon fas fa-book"></i>
    <p>
      Shop
      <i class="right fas fa-angle-left"></i>
    </p>
  </a>
   <ul class="nav nav-treeview">
     
        <li class="nav-item">
          <a href="{{route('shop.category')}}" class="nav-link  ">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Shop Categories</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('shop.products')}}" class="nav-link  ">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Shop Products</p>
          </a>
        </li>
        <li class="nav-item">
          <a href="{{route('shop.orders')}}" class="nav-link  ">
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; - Shop Orders</p>
          </a>
        </li>
 
  </ul> 
</li>*/ ?>
    <?php /* <li class="nav-item">
      <a href="{{route('winner') }}" class="nav-link">
        <i class="nav-icon far fa-envelope"></i>
        <p>
          Winner
        </p>
      </a>
    </li> */ ?>
    <li class="nav-item">
      <a href="{{route('users') }}" class="nav-link">
        <i class="nav-icon fas fa-users"></i>
        <p>
          Users 
        </p>
      </a>
    </li>
    <?php /* <li class="nav-item">
      <a href="{{route('images') }}" class="nav-link">
        <i class="nav-icon far fa-envelope"></i>
        <p>
          User Voting 
        </p>
      </a>
    </li> 

    <li class="nav-item">
      <a href="{{route('votings') }}" class="nav-link">
        <i class="nav-icon fas fa-cog"></i>
        <p>
          Voting 
        </p>
      </a>
    </li>*/ ?>


    <li class="nav-item">
      <a href="{{route('contacts') }}" class="nav-link">
        <i class="nav-icon fas fa-copy"></i>
        <p>
          Contacts 
        </p>
      </a>
    </li>
    <?php /* <li class="nav-item">
      <a href="{{route('subscribers') }}" class="nav-link">
        <i class="nav-icon far fa-envelope"></i>
        <p>
          Subscribe 
        </p>
      </a>
    </li> */ ?>

    <li class="nav-item">
      <a href="{{route('settings') }}" class="nav-link">
        <i class="nav-icon fas fa-cog"></i>
        <p>
          Settings
          
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('faqs') }}" class="nav-link">
        <i class="nav-icon fas fa-question-circle "></i>
        <p>
          Faqs
          
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('company') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Company
          
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('prizes') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Prizes
          
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('roadmaps') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Road Map
          
        </p>
      </a>
    </li>
<?php /* 
     

     
    <li class="nav-item">
      <a href="{{route('company') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Company
          
        </p>
      </a>
    </li>
    <?php /* <li class="nav-item">
      <a href="{{route('company-registration') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Company Registration
          
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('past-winner') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Past Winners
          
        </p>
      </a>
    </li>


    <li class="nav-item">
      <a href="{{route('home-slider') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Home Slider
          
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('alpha-classrooms') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Alpha Classrooms
          
        </p>
      </a>
    </li>
    <li class="nav-item">
      <a href="{{route('exhibited.photo') }}" class="nav-link">
        <i class="nav-icon fas fa-road "></i>
        <p>
          Exhibited Room
          
        </p>
      </a>
    </li> */ ?>


    <li class="nav-item">
      
      <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
          @csrf
      </form>
      <a href="javascript:;" class="nav-link" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
        <i class="nav-icon fas fa-sign-out-alt "></i>
        <p>
          Logout
          
        </p>
      </a>
    </li>


</li>
