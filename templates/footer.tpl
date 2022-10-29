<div class="card text-center">
  <div class="card-header">marca principal</div>
  <div class="card-body">
    <a href="{BASE_URL}home" class="btn btn-dark">
      <lord-icon
              src="https://cdn.lordicon.com/osuxyevn.json"
              trigger="hover"
              colors="primary:#848484"
              state="hover-3"
              style="width:30px;height:30px">
      </lord-icon>
    </a>
    {if $smarty.cookies.logged|default && $smarty.cookies.logged}
      <a href="{BASE_URL}logout" class="btn btn-dark">cerrar sesion</a>
    {/if}
  </div>
  <div class="card-footer text-muted">
    sponsors
  </div>
</div>
<script src="https://kit.fontawesome.com/d3b466b5b4.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdn.lordicon.com/qjzruarw.js"></script>
<script src="{BASE_URL}scripts/scripts.js"></script>

</body>
</html>