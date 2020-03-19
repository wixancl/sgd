																		
<?php																	
																		
namespace sgd\Http\Controllers;										
																		
use sgd\tasko;														
use Auth;																
use Illuminate\Http\Request;											
																		
																		
class TaskoController extends Controller  									
{																		
    /**																
     * Display a listing of the resource.								
     *																
     * @return \Illuminate\Http\Response								
     */																
    public function index()											
    {																	
        	//															
																					
																		
																		
																		
    }																	
																		
																		
																		
    /**																
     * Show the form for creating a new resource.						
     *																
     * @return \Illuminate\Http\Response								
     */																
    public function create()											
    {																	
    		//															
    		return views('tasko.create');								
    }																	
																		
																		
																		
    /**																
     * Store a newly created resource in storage.						
     *																
     * @param  \Illuminate\Http\Request  $request					
     * @return \Illuminate\Http\Response								
     */																
    public function store(Request $request)						
    {																	
        //Validacion													
        $this->validate($request, [							
        	'name' => 'required|string',								
        	'description' => 'required|string'							
        ]);															
																		
        //Almacenamiento												
			$task = new Tasko;								
			$task->name = $request->name;						
			$task->name = $request->description;				
			$task->user_id = Auth::user()->id;						
			$task->save();											
																		
        //Redireccion													
																		
																		
																		
																		
    }																	
																		
																		
																		
    /**																
     * Display the specified resource.								
     *																
     * @param  \sgd$nombre  $tasko								
     * @return \Illuminate\Http\Response								
     */																
    public function show(tasko $tasko)						
    {																	
        //															
			return view('tasko.show', compact('tasko'));				
																		
																		
																		
																		
																		
    }																	
																		
																		
																		
    /**																
    * Show the form for editing the specified resource.				
    *																	
    * @param  \sgd$nombre  $nombre								
    * @return \Illuminate\Http\Response								
    */																
    public function edit(tasko $tasko)						
    {																	
    	//																
    }																	
																		
																		
																		
	   /**																
     * Update the specified resource in storage.						
     *																
     * @param  \Illuminate\Http\Request   					
     * @param  \sgd$nombre $tasko 								
     * @return \Illuminate\Http\Response 								
     */ 																
    public function update(Request $request, tasko $tasko) 	
    { 																
        // 															
    } 																
																		
																		
																		
    /**																
     * Remove the specified resource from storage.					
     *																
     * @param  \sgd$nombre $tasko								
     * @return \Illuminate\Http\Response								
     */																
    public function destroy(tasko $tasko)						
    {																	
        //															
    }																	
}																		
