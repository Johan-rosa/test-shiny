# main is a div

    Code
      ui("test")
    Output
      <div class="form-group shiny-input-container">
        <label class="control-label" id="test-name-label" for="test-name">What is your name?</label>
        <input id="test-name" type="text" class="shiny-input-text form-control" value=""/>
      </div>
      <button id="test-greet" type="button" class="btn btn-default action-button">Greet</button>
      <div id="test-greeting" class="shiny-text-output"></div>

